//
//  FooterView.h
//  001-团购
//
//  Created by subaozi on 16/7/21.
//  Copyright © 2016年 com.jujiawuyou. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FooterView;
@protocol FooterViewDelegate <NSObject>

@optional
-(void)loadMoreClickWithfooterView:(FooterView *)footerView;

@end

@interface FooterView : UIView
+(instancetype)footerView;

@property (nonatomic, weak) id<FooterViewDelegate> Delegate;

@end
