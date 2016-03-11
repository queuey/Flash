//
//  AppDelegate.m
//  Flash
//
//  Created by Queuey on 16/3/9.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import "AppDelegate.h"
#import <IQKeyboardManager.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	[self useIQKeyBoardManager];
	
	
	
	return YES;
}

- (void)useIQKeyBoardManager {
	IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
	manager.enable = YES;
	manager.shouldResignOnTouchOutside = YES;
	manager.shouldToolbarUsesTextFieldTintColor = YES;
	manager.enableAutoToolbar = NO;
}

@end
