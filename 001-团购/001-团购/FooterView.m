//
//  FooterView.m
//  001-团购
//
//  Created by subaozi on 16/7/21.
//  Copyright © 2016年 com.jujiawuyou. All rights reserved.
//

#import "FooterView.h"

@interface FooterView ()

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet FooterView *loadMoreView;


@end

@implementation FooterView
- (IBAction)loadMoreClick:(UIButton *)sender {
    
    sender.hidden = YES;
    self.loadMoreView.hidden = NO;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        if ([self.Delegate respondsToSelector:@selector(loadMoreClickWithfooterView:)]) {
            [self.Delegate loadMoreClickWithfooterView:self];
        }
    });
    
    sender.hidden = NO;
    self.loadMoreView.hidden = YES;
    
    
}

+(instancetype)footerView{
    return [[[NSBundle mainBundle] loadNibNamed:@"FooterView" owner:nil options:nil] lastObject];
}
@end
