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


- (id)initWithDict:(NSDictionary *)jsonDict;


@end
