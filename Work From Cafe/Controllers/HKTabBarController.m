//
//  HKTabBarController.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKTabBarController.h"
#import "HKCafeListViewController.h"
#import "HKMapViewController.h"


@implementation HKTabBarController


- (id)init
{
    if ((self = [super init]))
    {
        [self setViewControllers:[NSArray arrayWithObjects:
                                  [[HKCafeListViewController alloc] init],
                                  [[HKMapViewController alloc] init],
                                  nil]];
    }
    return self;
}


@end
