//
//  HKCafeListView.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKCafeListView.h"


@implementation HKCafeListView


@synthesize tableView = _tableView;


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.tableView = [[UITableView alloc] initWithFrame:self.bounds
                                                      style:UITableViewStylePlain];
        self.tableView.autoresizesSubviews = YES;
        self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:self.tableView];
    }
    return self;
}


@end
