//
//  XCStatusesTableView.m
//  UITbaleViewCell练习2
//
//  Created by liuxingchen on 16/9/19.
//  Copyright © 2016年 liuxingchen. All rights reserved.
//

#import "XCStatusesTableView.h"
#import "XCStatuses.h"
#import "XCStatusesCell.h"
@interface XCStatusesTableView ()
/** 数据源 */
@property(nonatomic,strong)NSArray * statuses ;

@end

@implementation XCStatusesTableView



-(NSArray *)statuses
{
    if (_statuses ==nil) {
        NSString *path =[[NSBundle mainBundle]pathForResource:@"statuses.plist" ofType:nil];
        NSArray *statusesArray =[NSArray arrayWithContentsOfFile:path];
        NSMutableArray *arrayM =[NSMutableArray array];
        for (NSDictionary *dict in statusesArray) {
            XCStatuses *statuses = [XCStatuses statusesWithDict:dict];
            [arrayM addObject:statuses];
        }
        _statuses = arrayM;
    }
    return _statuses;
}
- (void)viewDidLoad {
    [super viewDidLoad];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.statuses.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XCStatusesCell * cell = [XCStatusesCell cellWithTableView:tableView];
    cell.statuses = self.statuses[indexPath.row];
    return cell;
}
/**
 * 返回cell的高度
 */
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    XCStatuses *statuses = self.statuses[indexPath.row];
    return statuses.cellHeight;
}
/**
 * 估计cell的高度
 * 正常情况下方法调用cell
    - 1.heightForRowAtIndexPath会先返回一个cell的高度
    - 2.cellForRowAtIndexPath设置cell的内容
 * 用了估计cell的高度的方法调用cell
 * 那么就会先调用cellForRowAtIndexPath方法创建cell，再调用heightForRowAtIndexPath方法获取cell的真实高度
 */
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 200;
}
@end
