//
//  HKCafes.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKCafes.h"
#import <CoreLocation/CoreLocation.h>


@interface HKCafes () // Private
@property (nonatomic, readwrite, strong) CLLocationManager *locationManager;
@end


@implementation HKCafes


@synthesize locationManager = _locationManager;


- (id)init
{
    if ((self = [super init]))
    {
        self.locationManager = [[CLLocationManager alloc] init];
    }
    return self;
}


@end
