//
//  HKCafeListViewController.h
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import <UIKit/UIKit.h>

@class HKCafe, HKCafes;

@interface HKCafeListViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
    HKCafes __strong *myCafes;
}

- (id)initWithCafes:(HKCafes *)someCafes;

@end
