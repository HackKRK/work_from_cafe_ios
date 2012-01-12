//
//  HKCafes.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKCafes.h"
#import "HKCafe.h"


@interface HKCafes () // Private
@property (nonatomic, readwrite, strong) CLLocationManager *locationManager;
@end


@implementation HKCafes


@synthesize cafes = _cafes;
@synthesize locationManager = _locationManager;


- (id)init
{
    if ((self = [super init]))
    {
        NSMutableArray *cafes = [NSMutableArray arrayWithCapacity:10];
        for (int i = 0; i<10; i++)
        {
            HKCafe *cafe = [HKCafe new];
            cafe.name = [NSString stringWithFormat:@"Cafe #%d", i];
            [cafes addObject:cafe];
        }
        
        self.locationManager = [[CLLocationManager alloc] init];
        self.locationManager.delegate = self;
        [self.locationManager startUpdatingLocation];
    }
    return self;
}


#pragma mark -
#pragma mark <CLLocationManagerDelegate>
- (void)locationManager:(CLLocationManager *)manager
	didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    NSLog(@"new location: %@", newLocation);
    
}



@end
