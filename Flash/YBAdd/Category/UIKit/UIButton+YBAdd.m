//
//  UIButton+YBAdd.m
//  Flash
//
//  Created by Queuey on 16/3/9.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import "UIButton+YBAdd.h"

@implementation UIButton (YBAdd)



+ (UIButton *)buttonWithTitleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize target:(id)target action:(SEL)action title:(NSString *)title {
	UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
	button.titleLabel.font = [UIFont systemFontOfSize:fontSize];
	[button setTitleColor:titleColor forState:UIControlStateNormal];
	[button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
	[button setTitle:title forState:UIControlStateNormal];
	return button;
}



+ (UIButton *)buttonWithTitleColor:(UIColor *)titleColor fontSize:(CGFloat)fontSize target:(id)target action:(SEL)action iamgeName:(NSString *)iamgeName title:(NSString *)title {
	UIButton *button = [self buttonWithTitleColor:titleColor fontSize:fontSize target:target action:action title:title];
	[button setImage:[UIImage imageNamed:iamgeName] forState:UIControlStateNormal];
	return button;
}






@end
