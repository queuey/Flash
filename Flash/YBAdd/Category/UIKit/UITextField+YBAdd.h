//
//  UITextField+YBAdd.h
//  Flash
//
//  Created by Queuey on 16/3/9.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (YBAdd)

+ (UITextField *)textFieldWithLeftView:(UIView *)leftView keyboardType:(UIKeyboardType)keyboardType deleaget:(id)delegate placeholder:(NSString *)placeholder;


@end
