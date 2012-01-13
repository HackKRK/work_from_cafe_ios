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
@synthesize locationToShow = _locationToShow;

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
    [self.view.mapView setCenterCoordinate:self.cafes.myLocation.coordinate
                                  animated:YES];
    [self.view setNeedsDisplay];
}


- (void)loadView
{
    self.view = [[HKMapView alloc] initWithFrame:CGRectZero];
    self.view.autoresizesSubviews = YES;
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    self.view.mapView.delegate = self;
    self.view.mapView.mapType = MKMapTypeStandard;
}


- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (self.locationToShow) {
        MKCoordinateSpan span;
        span.latitudeDelta = 0.1;
        span.longitudeDelta = 0.1;
        
        MKCoordinateRegion region;
        region.center = self.cafes.myLocation.coordinate;
        region.span = span;
            
        [self.view.mapView setRegion:region animated:YES];
        self.locationToShow = nil;
        
    }
}

//- (void)showCoordinate:(CLLocationCoordinate2D)someCoordinate {
//    _loaded = YES;
//    
//    MKCoordinateSpan span;
//    span.latitudeDelta = 0.1;
//    span.longitudeDelta = 0.1;
//    
//    MKCoordinateRegion region;
//    region.center = someCoordinate;
//    region.span = span;
//    
//    [self.view.mapView setRegion:region animated:YES];
//}

#pragma mark -
#pragma mark <MKMapViewDelegate>


@end
