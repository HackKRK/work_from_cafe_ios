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
#import "HKCafe.h"


@implementation HKTabBarController


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
        
        [self setViewControllers:[NSArray arrayWithObjects:
                                  [[HKCafeListViewController alloc] initWithCafes:cafes],
                                  [[HKMapViewController alloc] initWithCafes:cafes],
                                  nil]];
    }
    return self;
}


@end
