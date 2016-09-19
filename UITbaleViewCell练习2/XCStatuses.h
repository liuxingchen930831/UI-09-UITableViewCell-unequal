//
//  XCStatuses.h
//  UITbaleViewCell练习2
//
//  Created by liuxingchen on 16/9/19.
//  Copyright © 2016年 liuxingchen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XCStatuses : NSObject
/** 头像 */
@property(nonatomic,strong)NSString * icon ;
/** 名字 */
@property(nonatomic,strong)NSString * name ;
/** 会员 */
@property(nonatomic,assign,getter=isVip)BOOL vip ;
/** 图片 */
@property(nonatomic,strong)NSString * picture ;
/** 内容 */
@property(nonatomic,strong)NSString * text ;
/** cell高度 */
@property(nonatomic,assign)CGFloat  cellHeight ;

+(instancetype)statusesWithDict:(NSDictionary *)dict;

@end
