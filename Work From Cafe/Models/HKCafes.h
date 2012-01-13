//
//  HKCafes.h
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface HKCafes : NSObject <CLLocationManagerDelegate>


@property (nonatomic, readwrite, strong) NSMutableArray *cafes;
@property (nonatomic, readonly, strong) CLLocation *myLocation;


- (NSArray *)cafeNearMe;


@end
