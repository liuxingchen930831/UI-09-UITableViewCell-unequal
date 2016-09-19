//
//  XCStatuses.m
//  UITbaleViewCell练习2
//
//  Created by liuxingchen on 16/9/19.
//  Copyright © 2016年 liuxingchen. All rights reserved.
//

#import "XCStatuses.h"

@implementation XCStatuses
+(instancetype)statusesWithDict:(NSDictionary *)dict
{
    XCStatuses *statuses = [[self alloc]init];
    [statuses setValuesForKeysWithDictionary:dict];
    return statuses;
}
@end
