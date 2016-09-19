//
//  XCStatusesCell.m
//  UITbaleViewCell练习2
//
//  Created by liuxingchen on 16/9/19.
//  Copyright © 2016年 liuxingchen. All rights reserved.
//

#import "XCStatusesCell.h"
#import "XCStatuses.h"
@implementation XCStatusesCell
-(void)setStatuses:(XCStatuses *)statuses
{
    _statuses = statuses;
    self.iconView.image =[UIImage imageNamed:statuses.icon];
    self.nameLabel.text = statuses.name;
    if (statuses.vip) {
        self.nameLabel.textColor = [UIColor orangeColor];
        self.vip.hidden = NO;
    }else{
        self.nameLabel.textColor = [UIColor blackColor];
        self.vip.hidden = YES;
    }
    self.contentLabel.text = statuses.text;
    if (statuses.picture) {
        self.picture.hidden = NO;
        self.picture.image =[UIImage imageNamed:statuses.picture];
    }else
    {
        self.picture.hidden = YES;
    }
    //强制重绘
    [self layoutIfNeeded];
    
    if (self.picture.hidden ==YES) {
        statuses.cellHeight = CGRectGetMaxY(self.contentLabel.frame)+10;
    }else{
        statuses.cellHeight = CGRectGetMaxY(self.picture.frame)+10;
    }
    
}
-(void)awakeFromNib
{
    // 设置label每一行文字的最大宽度
    // 为了保证计算出来的数值 跟 真正显示出来的效果 一致
    self.contentLabel.preferredMaxLayoutWidth = [UIScreen mainScreen].bounds.size.width-20;
}
+(instancetype)cellWithTableView:(UITableView *)tableView
{
    static NSString *ID =@"statusesCell";
    XCStatusesCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell==nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass(self) owner:nil options:nil]lastObject];
    }
    return cell;
}
-(CGFloat)heightCell
{
    if (self.picture.hidden ==YES) {
        return CGRectGetMaxY(self.contentLabel.frame)+10;
    }else{
        return CGRectGetMaxY(self.picture.frame)+10;
    }
}
@end
