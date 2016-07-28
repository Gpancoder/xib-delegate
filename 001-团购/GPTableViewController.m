//
//  GPTableViewController.m
//  001-团购
//
//  Created by subaozi on 16/7/20.
//  Copyright © 2016年 com.jujiawuyou. All rights reserved.
//

#import "GPTableViewController.h"
#import "GroupBy.h"
#import "GPTableViewCell.h"
#import "HeaderView.h"
#import "FooterView.h"

@interface GPTableViewController ()<FooterViewDelegate>
@property (nonatomic, strong) NSMutableArray *TgArray;

@end

@implementation GPTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HeaderView *View = [HeaderView headerView];
    self.tableView.tableHeaderView = View;
    
    FooterView  *footerView = [FooterView footerView];
    self.tableView.tableFooterView = footerView;
    footerView.Delegate = self;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadMoreClickWithfooterView:(FooterView *)footerView{
    GroupBy *tg1 = [[GroupBy alloc] init];
    tg1.icon = @"37e4761e6ecf56a2d78685df7157f097";
    tg1.title = @"哈哈";
    tg1.price = @"15";
    tg1.buyCount = @"两万";
    
    [self.TgArray addObject:tg1];
    
    NSIndexPath *lastindexPath = [NSIndexPath indexPathForRow:self.TgArray.count - 1 inSection:0];
    
    [self.tableView insertRowsAtIndexPaths:@[lastindexPath] withRowAnimation:UITableViewRowAnimationFade];
//    [self.tableView reloadRowsAtIndexPaths:@[lastindexPath] withRowAnimation:UITableViewRowAnimationRight];

}

#pragma mark - Table view data source



//返回有多少行
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.TgArray.count;
}


//cell长啥样
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    GPTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.tg = self.TgArray[indexPath.row];
    
  
    
    return cell;
}





#pragma mark - 懒加载
-(NSMutableArray *)TgArray{
    if (!_TgArray) {
        NSArray *dictArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"tgs.plist" ofType:nil]];
        NSMutableArray *array = [NSMutableArray arrayWithCapacity:dictArray.count];
        for (NSDictionary *dict in dictArray) {
            GroupBy *tg = [GroupBy tgWithDict:dict];
            [array addObject:tg];
        }
        
        _TgArray = array;
    }
    
    return _TgArray;
}

@end
