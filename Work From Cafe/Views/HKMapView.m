//
//  HKMapView.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKMapView.h"


@interface HKMapView () // Private
@property (nonatomic, readwrite, strong) MKMapView *mapView;
@end


@implementation HKMapView


@synthesize mapView = _mapView;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.mapView = [[MKMapView alloc] initWithFrame:self.bounds];
        self.mapView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:self.mapView];
    }
    return self;
}


@end
