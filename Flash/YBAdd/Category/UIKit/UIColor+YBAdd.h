//
//  UIColor+YBAdd.h
//  Flash
//
//  Created by Queuey on 16/3/10.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (YBAdd)

+ (UIColor *)colorWithHex:(UInt32)hex;
+ (UIColor *)colorWithHex:(UInt32)hex alpha:(CGFloat)alpha;
+ (UIColor *)colorWithHexString:(NSString *)hexString;
- (NSString *)HEXString;


/**
 *	获取一个渐变色的UIColor
 *
 *	@param c1			颜色起始
 *	@param c2			颜色终止
 *	@param height	高度
 *
 *	@return 渐变色的Color
 */
+ (UIColor*)colorGradientColor:(UIColor*)c1 toColor:(UIColor*)c2 withHeight:(int)height;



@end
