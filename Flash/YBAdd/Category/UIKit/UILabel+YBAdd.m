//
//  UILabel+YBAdd.m
//  Flash
//
//  Created by Queuey on 16/3/9.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import "UILabel+YBAdd.h"

@implementation UILabel (YBAdd)

+ (UILabel *)labelWithFout:(CGFloat)foutSize textColor:(UIColor *)textcolor text:(NSString *)text {
	UILabel *label = [[UILabel alloc] init];
	label.text = text;
	label.textColor = textcolor;
	label.numberOfLines = 0;
	label.font = [UIFont systemFontOfSize:foutSize];
	return label;
}


+ (UILabel *)labelWithFrame:(CGRect)frame
					   text:(NSString *)text
				   fontSize:(CGFloat)size
				  textcolor:(UIColor *)textcolor
					  align:(NSTextAlignment)align{
	UILabel *label = [[UILabel alloc] initWithFrame:frame];
	label.text = text;
	label.textColor = textcolor;
	label.numberOfLines = 0;
	label.textAlignment = align;
	label.font = [UIFont systemFontOfSize:size];
	return label;
}

+ (UILabel *)labelWithFrame:(CGRect)frame
				   fontSize:(CGFloat)size
				  textcolor:(UIColor *)textcolor
					   text:(NSString *)text {
	UILabel *label = [[UILabel alloc] initWithFrame:frame];
	label.text = text;
	label.textColor = textcolor;
	label.numberOfLines = 0;
	label.font = [UIFont systemFontOfSize:size];
	return label;
}



- (CGSize)suggestedSizeForWidth:(CGFloat)width {
	if (self.attributedText)
		return [self suggestSizeForAttributedString:self.attributedText width:width];
	
	return [self suggestSizeForString:self.text width:width];
}

- (CGSize)suggestSizeForAttributedString:(NSAttributedString *)string width:(CGFloat)width {
	if (!string) {
		return CGSizeZero;
	}
	return [string boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading context:nil].size;
}

- (CGSize)suggestSizeForString:(NSString *)string width:(CGFloat)width {
	if (!string) {
		return CGSizeZero;
	}
	return [self suggestSizeForAttributedString:[[NSAttributedString alloc] initWithString:string attributes:@{NSFontAttributeName: self.font}] width:width];
}

@end
