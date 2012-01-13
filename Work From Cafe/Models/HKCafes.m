//
//  HKCafes.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKCafes.h"
#import "HKCafe.h"
#import "AFNetworking.h"


@interface HKCafes () // Private
@property (nonatomic, readwrite, strong) CLLocation *myLocation;
@property (nonatomic, readwrite, strong) CLLocationManager *locationManager;
@end


@implementation HKCafes


@synthesize cafes = _cafes;
@synthesize myLocation = _myLocation;
@synthesize locationManager = _locationManager;


- (id)init
{
    if ((self = [super init]))
    {
        // start gps
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        [self.locationManager startUpdatingLocation];
        
        // populate with cafes from web
        self.cafes = [NSMutableArray arrayWithCapacity:10];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://kaaes.github.com/work_from_cafe/mobile.json"]];
        __block HKCafes *blockself = self;
        AFJSONRequestOperation *operation = [AFJSONRequestOperation JSONRequestOperationWithRequest:request
                                                                                            success: ^ (NSURLRequest *request, NSHTTPURLResponse *response, id JSON)
                                             {
                                                 [self willChangeValueForKey:@"cafes"];
                                                 for (NSDictionary *cafeDict in JSON)
                                                 {
                                                     HKCafe *newCafe = [[HKCafe alloc] initWithDict:cafeDict];
                                                     [blockself.cafes addObject:newCafe];
                                                 }
                                                 [self didChangeValueForKey:@"cafes"];
                                             }
                                                                                            failure:nil];
        
        NSOperationQueue *queue = [[NSOperationQueue alloc] init];
        [queue addOperation:operation];
    }
    return self;
}


- (NSArray *)cafeNearMe
{
    NSMutableArray *cafesNearMe = [NSMutableArray arrayWithCapacity:10];
    
    for (HKCafe *cafe in self.cafes)
    {
        if ([self.myLocation distanceFromLocation:[cafe location]] < 5000.0)
        {
            [cafesNearMe addObject:cafe];
        }
    }
    
    return cafesNearMe;
}


#pragma mark -
#pragma mark <CLLocationManagerDelegate>
- (void)locationManager:(CLLocationManager *)manager
	didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    self.myLocation = newLocation;
}



@end
