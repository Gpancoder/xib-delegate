//
//  HeaderView.m
//  001-团购
//
//  Created by subaozi on 16/7/21.
//  Copyright © 2016年 com.jujiawuyou. All rights reserved.
//

#import "HeaderView.h"

@implementation HeaderView


+(instancetype)headerView{
    return [[[NSBundle mainBundle] loadNibNamed:@"HeaderView" owner:nil options:nil] lastObject];
}



@end
