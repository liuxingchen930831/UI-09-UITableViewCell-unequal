//
//  XCStatusesCell.h
//  UITbaleViewCell练习2
//
//  Created by liuxingchen on 16/9/19.
//  Copyright © 2016年 liuxingchen. All rights reserved.
//

#import <UIKit/UIKit.h>
@class XCStatuses;
@interface XCStatusesCell : UITableViewCell
/** 微博模型 */
@property(nonatomic,strong) XCStatuses * statuses ;
@property (weak, nonatomic) IBOutlet UIImageView *iconView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
@property (weak, nonatomic) IBOutlet UIImageView *vip;
@property (weak, nonatomic) IBOutlet UIImageView *picture;
+(instancetype)cellWithTableView:(UITableView *)tableView;
-(CGFloat)heightCell;
@end
