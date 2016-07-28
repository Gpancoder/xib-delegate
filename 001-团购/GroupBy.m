//
//  GroupBy.m
//  001-团购
//
//  Created by subaozi on 16/7/20.
//  Copyright © 2016年 com.jujiawuyou. All rights reserved.
//

#import "GroupBy.h"

@implementation GroupBy

-(instancetype)initWithDict:(NSDictionary *)dict{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+(instancetype)tgWithDict:(NSDictionary *)dict{
    return [[self alloc] initWithDict:dict];
}

@end
