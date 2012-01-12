//
//  HKCafe.m
//  Work From Cafe
//
//  Created by Błażej Biesiada on 1/12/12.
//  Copyright (c) 2012 HackKrk. All rights reserved.
//

#import "HKCafe.h"


@implementation HKCafe


@synthesize name = _name;


- (id)initWithDict:(NSDictionary *)jsonDict
{
    if ((self = [super init]))
    {
        self.name = [jsonDict objectForKey:@"name"];
    }
    return self;
}


@end
