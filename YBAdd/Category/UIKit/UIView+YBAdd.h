//
//  UIView+YBAdd.h
//  Flash
//
//  Created by Queuey on 16/3/10.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YBAdd)

+ (UINib *)loadNib;
+ (UINib *)loadNibNamed:(NSString *)nibName;
+ (UINib *)loadNibNamed:(NSString *)nibName bundle:(NSBundle *)bundle;


+ (instancetype)loadInstanceFromNib;
+ (instancetype)loadInstanceFromNibWithName:(NSString *)nibName;
+ (instancetype)loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner;
+ (instancetype)loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner bundle:(NSBundle *)bundle;



- (void)cornerRadius:(CGFloat)radius strokeSize:(CGFloat)size color:(UIColor *)color;

- (void)setRoundedCorners:(UIRectCorner)corners radius:(CGFloat)radius;


- (void)shadowWithColor:(UIColor *)color offset:(CGSize)offset opacity:(CGFloat)opacity radius: (CGFloat)radius;


- (void)removeFromSuperviewWithFadeDuration:(NSTimeInterval)duration;


- (void)addSubview: (UIView *)view withTransition:(UIViewAnimationTransition)transition duration: (NSTimeInterval)duration;

- (void)removeFromSuperviewWithTransition:(UIViewAnimationTransition)transition duration: (NSTimeInterval)duration;


- (void)rotateByAngle: (CGFloat)angle
			 duration: (NSTimeInterval)duration
		  autoreverse: (BOOL)autoreverse
		  repeatCount: (CGFloat)repeatCount
	   timingFunction: (CAMediaTimingFunction *)timingFunction;

- (void)moveToPoint: (CGPoint)newPoint
		   duration: (NSTimeInterval)duration
		autoreverse: (BOOL)autoreverse
		repeatCount: (CGFloat)repeatCount
	 timingFunction: (CAMediaTimingFunction *)timingFunction;




//打印视图层级
- (NSString *)printRecursiveView;
//打印约束
- (NSString *)printConstraintsDescription;
//打印整个视图树的字符串
- (NSString *)printAutolayoutTraceDescription;





@end
