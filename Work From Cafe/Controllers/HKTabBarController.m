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
#import "HKCafes.h"


@interface HKTabBarController () // Priavte
@property (nonatomic, readwrite, strong) HKCafes *cafes;
@end


@implementation HKTabBarController


@synthesize cafes = _cafes;


- (id)init
{
    if ((self = [super init]))
    {
        self.cafes = [[HKCafes alloc] init];
        
        [self setViewControllers:[NSArray arrayWithObjects:
                                  [[HKCafeListViewController alloc] initWithCafes:self.cafes],
                                  [[HKMapViewController alloc] initWithCafes:self.cafes],
                                  nil]];
    }
    return self;
}

@end
