//
//  HKMapViewController.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKMapViewController.h"
#import "HKMapView.h"


@implementation HKMapViewController


- (void)loadView
{
    self.view = [[HKMapView alloc] initWithFrame:CGRectZero];
    self.view.autoresizesSubviews = YES;
    self.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
}


@end
