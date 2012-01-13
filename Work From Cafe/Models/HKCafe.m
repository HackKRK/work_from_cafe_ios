//
//  HKCafe.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKCafe.h"


@interface HKCafe () // Private
@property (nonatomic, readwrite, strong) CLPlacemark *placemark;
@end


@implementation HKCafe


@synthesize placemark = _placemark;


@synthesize name = _name;
@synthesize address = _address;
@synthesize city = _city;
@synthesize descInternet = _descInternet;
@synthesize descPower = _descPower;
@synthesize descSeating = _descSeating;
@synthesize descService = _descService;
@synthesize descProvision = _descProvision;


- (id)initWithDict:(NSDictionary *)jsonDict
{
    if ((self = [super init]))
    {
        self.name = [jsonDict objectForKey:@"name"];
        self.address = [jsonDict objectForKey:@"address"];
        self.city = [jsonDict objectForKey:@"city"];
        
        NSDictionary *descDict = [jsonDict objectForKey:@"description"];
        self.descInternet = [descDict objectForKey:@"internet"];
        self.descPower = [descDict objectForKey:@"power_outlets"];
        self.descSeating = [descDict objectForKey:@"seating"];
        self.descService = [descDict objectForKey:@"service"];
        self.descProvision = [descDict objectForKey:@"provision"];
        
        __block HKCafe *blockself = self;
        CLGeocoder *geocoder = [[CLGeocoder alloc] init];
        [geocoder geocodeAddressString:[NSString stringWithFormat:@"%@, %@", self.city, self.address]
                     completionHandler: ^ (NSArray *placemarks, NSError *error)
         {
             [blockself willChangeValueForKey:@"coordinate"];
             blockself.placemark = [placemarks lastObject];
             [blockself didChangeValueForKey:@"coordinate"];
         }];
    }
    return self;
}


- (CLLocationCoordinate2D)coordinate
{
    return self.placemark.location.coordinate;
}


@end
