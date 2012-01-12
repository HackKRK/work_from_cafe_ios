//
//  HKAppDelegate.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKAppDelegate.h"
#import "HKTabBarController.h"


@implementation HKAppDelegate


@synthesize window = _window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = [[HKTabBarController alloc] init];
    [self.window makeKeyAndVisible];
    return YES;
}


@end
