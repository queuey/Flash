//
//  UIButton+YBAdd.h
//  Flash
//
//  Created by Queuey on 16/3/9.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (YBAdd)


/**
 *	工厂方法快速创建一个UIButton对象
 */
+ (UIButton *)buttonWithTitleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize target:(id)target action:(SEL)action title:(NSString *)title;

+ (UIButton *)buttonWithTitleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize target:(id)target action:(SEL)action iamgeName:(NSString *)iamgeName title:(NSString *)title;

@end
