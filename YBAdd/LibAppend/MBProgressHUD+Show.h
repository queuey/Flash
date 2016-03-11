//
//  MBProgressHUD+Show.h
//  Flash
//
//  Created by Queuey on 16/3/9.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>



@interface MBProgressHUD (Show)

+ (void)showError:(NSString *)error;
+ (void)showError:(NSString *)error toView:(UIView *)view;

+ (void)showSuccess:(NSString *)success;
+ (void)showSuccess:(NSString *)success toView:(UIView *)view;

+ (MBProgressHUD *)showMessage:(NSString *)message;
+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view;

+ (void)showMessage:(NSString *)message completion:(void (^)(void))completion;


+ (void)hideHUDForView:(UIView *)view;
+ (void)hideHUD;

// 加载菊花图
+ (void)loadding;


@end
