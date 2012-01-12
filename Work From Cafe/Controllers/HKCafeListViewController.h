//
//  HKCafeListViewController.h
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HKCafe;

@interface HKCafeListViewController : UIViewController {
    NSArray __strong *myCafes;
}

- (id)initWithCafes:(NSArray *)someCafes;

@end
