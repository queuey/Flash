//
//  UITextField+YBAdd.m
//  Flash
//
//  Created by Queuey on 16/3/9.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import "UITextField+YBAdd.h"

@implementation UITextField (YBAdd)

+ (UITextField *)textFieldWithLeftView:(UIView *)leftView keyboardType:(UIKeyboardType)keyboardType deleaget:(id)delegate placeholder:(NSString *)placeholder {
	UITextField *textField = [[UITextField alloc] init];
	textField.keyboardType = keyboardType;
	
	if (placeholder) {
		textField.placeholder = placeholder;
	}
	if (leftView && [leftView isKindOfClass:[UIView class]]) {
		textField.leftView = leftView;
		textField.leftViewMode = UITextFieldViewModeAlways;
	}
	if (delegate) {
		textField.delegate = delegate;
	}
	return textField;
}


@end
