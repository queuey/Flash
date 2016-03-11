//
//  UINavigationController+YBAdd.h
//  Flash
//
//  Created by Queuey on 16/3/10.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (YBAdd)

- (void)pushViewController:(UIViewController *)controller withTransition:(UIViewAnimationTransition)transition;
- (UIViewController *)popViewControllerWithTransition:(UIViewAnimationTransition)transition;


@end
