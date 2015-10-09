//
//  SecondViewController.h
//  UITest
//
//  Created by 李金柱 on 15/9/26.
//  Copyright (c) 2015年 李金柱. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (nonatomic, copy) NSString *text;

@property (nonatomic)        CGFloat speed;
@property (nonatomic, copy) NSString *textColor;
@property (nonatomic)        BOOL   isMoving;
@property (nonatomic)        BOOL isV;
@property (nonatomic, copy) NSString *bgColor;
@end
