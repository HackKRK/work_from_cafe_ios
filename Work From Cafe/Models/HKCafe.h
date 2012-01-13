//
//  HKCafe.h
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface HKCafe : NSObject


@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *address;
@property (nonatomic, strong) NSString *city;
@property (nonatomic, strong) NSString *descInternet;
@property (nonatomic, strong) NSString *descPower;
@property (nonatomic, strong) NSString *descSeating;
@property (nonatomic, strong) NSString *descService;
@property (nonatomic, strong) NSString *descProvision;


- (id)initWithDict:(NSDictionary *)jsonDict;


- (CLLocation *)location;


@end
