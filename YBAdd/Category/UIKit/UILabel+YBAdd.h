//
//  UILabel+YBAdd.h
//  Flash
//
//  Created by Queuey on 16/3/9.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import <UIKit/UIKit.h>

static CGFloat const TitleFoutSize = 17.0;



@interface UILabel (YBAdd)

+ (UILabel *)labelWithFrame:(CGRect)frame
				   fontSize:(CGFloat)size
				  textcolor:(UIColor *)textcolor
					   text:(NSString *)text;

+ (UILabel *)labelWithFrame:(CGRect)frame
					   text:(NSString *)text
				   fontSize:(CGFloat)size
				  textcolor:(UIColor *)textcolor
					  align:(NSTextAlignment)align;

+ (UILabel *)labelWithFout:(CGFloat)foutSize
				 textColor:(UIColor *)textcolor
					  text:(NSString *)text;


@end
