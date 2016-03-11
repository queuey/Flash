//
//  UINavigationController+YBAdd.m
//  Flash
//
//  Created by Queuey on 16/3/10.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import "UINavigationController+YBAdd.h"

static CGFloat const kAnimationDuration = 0.5;

@implementation UINavigationController (YBAdd)

- (void)pushViewController:(UIViewController *)controller withTransition:(UIViewAnimationTransition)transition {
	[UIView beginAnimations:nil context:NULL];
	[self pushViewController:controller animated:NO];
	[UIView setAnimationDuration:kAnimationDuration];
	[UIView setAnimationBeginsFromCurrentState:YES];
	[UIView setAnimationTransition:transition forView:self.view cache:YES];
	[UIView commitAnimations];
}

- (UIViewController *)popViewControllerWithTransition:(UIViewAnimationTransition)transition {
	[UIView beginAnimations:nil context:NULL];
	UIViewController *controller = [self popViewControllerAnimated:NO];
	[UIView setAnimationDuration:kAnimationDuration];
	[UIView setAnimationBeginsFromCurrentState:YES];
	[UIView setAnimationTransition:transition forView:self.view cache:YES];
	[UIView commitAnimations];
	return controller;
}



@end
