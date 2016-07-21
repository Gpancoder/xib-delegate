//
//  GroupBy.h
//  001-团购
//
//  Created by subaozi on 16/7/20.
//  Copyright © 2016年 com.jujiawuyou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GroupBy : NSObject
@property (nonatomic, copy) NSString *buyCount;
@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *price;
@property (nonatomic, copy) NSString *title;

-(instancetype)initWithDict:(NSDictionary *)dict;
+(instancetype)tgWithDict:(NSDictionary *)dict;

@end
