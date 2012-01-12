//
//  HKMapViewController.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKMapViewController.h"
#import "HKMapView.h"
#import "HKCafes.h"


@interface HKMapViewController () // Private
@property (nonatomic, readwrite, strong) HKCafes *cafes;
@property (nonatomic, readwrite, strong) HKMapView *view;
@end


@implementation HKMapViewController


@synthesize cafes = _cafes;
@dynamic view; // supplied by UIViewController


- (id)initWithCafes:(HKCafes *)cafes;
{
    if ((self = [super init]))
    {
        self.cafes = cafes;
        self.title = @"Map";
        
        [self addObserver:self
               forKeyPath:@"cafes"
                  options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionInitial
                  context:NULL];
    }
    return self;
}


- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    NSLog(@"%@", keyPath);
}


- (void)loadView
{
    self.view = [[HKMapView alloc] initWithFrame:CGRectZero];
    self.view.autoresizesSubviews = YES;
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    self.view.mapView.delegate = self;
    self.view.mapView.mapType = MKMapTypeStandard;
    
    MKCoordinateRegion region;
    CLLocationCoordinate2D coordinates;
    coordinates.latitude = 10.0;
    coordinates.longitude = 10.0;
    
    MKCoordinateSpan span;
    span.latitudeDelta = 1.0;
    span.longitudeDelta = 1.0;
    region.span = span;
    
    [self.view.mapView setRegion:region];
}


#pragma mark -
#pragma mark <MKMapViewDelegate>


@end
