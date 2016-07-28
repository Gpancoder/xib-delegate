//
//  GPTableViewCell.m
//  001-团购
//
//  Created by subaozi on 16/7/20.
//  Copyright © 2016年 com.jujiawuyou. All rights reserved.
//

#import "GPTableViewCell.h"
#import "GroupBy.h"

@interface GPTableViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imageview;
@property (weak, nonatomic) IBOutlet UILabel *title;
@property (weak, nonatomic) IBOutlet UILabel *price;

@property (weak, nonatomic) IBOutlet UILabel *byCount;

@end

@implementation GPTableViewCell


-(void)setTg:(GroupBy *)tg{
    _tg = tg;
    self.imageview.image = [UIImage imageNamed:tg.icon];
    self.title.text = tg.title;
    self.price.text = tg.price;
    self.byCount.text = tg.buyCount;
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
