//
//  UIView+YBAdd.m
//  Flash
//
//  Created by Queuey on 16/3/10.
//  Copyright © 2016年 Mr.Q. All rights reserved.
//

#import "UIView+YBAdd.h"

#define degToRad(x) (M_PI * (x) / 180.0)


@implementation UIView (YBAdd)

+ (UINib *)loadNib {
	return [self loadNibNamed:NSStringFromClass([self class])];
}
+ (UINib *)loadNibNamed:(NSString *)nibName {
	return [self loadNibNamed:nibName bundle:[NSBundle mainBundle]];
}
+ (UINib *)loadNibNamed:(NSString *)nibName bundle:(NSBundle *)bundle {
	return [UINib nibWithNibName:nibName bundle:bundle];
}

+ (instancetype)loadInstanceFromNib {
	return [self loadInstanceFromNibWithName:NSStringFromClass([self class])];
}
+ (instancetype)loadInstanceFromNibWithName:(NSString *)nibName {
	return [self loadInstanceFromNibWithName:nibName owner:nil];
}
+ (instancetype)loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner {
	return [self loadInstanceFromNibWithName:nibName owner:owner bundle:[NSBundle mainBundle]];
}
+ (instancetype)loadInstanceFromNibWithName:(NSString *)nibName owner:(id)owner bundle:(NSBundle *)bundle {
	UIView *result = nil;
	NSArray *elements = [bundle loadNibNamed:nibName owner:owner options:nil];
	for (id object in elements) {
		if ([object isKindOfClass:[self class]]) {
			result = object;
			break;
		}
	}
	return result;
}


#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"

- (NSString *)printRecursiveView {
	NSString *description = [NSString stringWithFormat:@"%s [Line %d] \r\r %@",
							 __PRETTY_FUNCTION__, __LINE__,
							 [self performSelector:@selector(recursiveDescription)]];
	NSLog(@"description = %@",description);
	return description;
}

- (NSString *)printConstraintsDescription {
	NSString *description = [NSString stringWithFormat:@"%s [Line %d] \r\r %@ \r\r",
							 __PRETTY_FUNCTION__, __LINE__,
							 [[self constraints] description]];
	NSLog(@"description = %@",description);
	return description;
}
- (NSString *)printAutolayoutTraceDescription {
	NSString *description = [NSString stringWithFormat:@"%s [Line %d] \r\r %@",
							 __PRETTY_FUNCTION__, __LINE__,
							 [self performSelector:@selector(_autolayoutTrace)]];
	NSLog(@"description = %@",description);
	return description;
}

#pragma clang diagnostic pop





- (void)cornerRadius:(CGFloat)radius strokeSize:(CGFloat)size color:(UIColor *)color {
    self.layer.cornerRadius = radius;
    self.layer.borderColor  = color.CGColor;
    self.layer.borderWidth  = size;
}


-(void)setRoundedCorners:(UIRectCorner)corners radius:(CGFloat)radius {
	CGRect rect = self.bounds;
	UIBezierPath *maskPath;
	maskPath = [UIBezierPath bezierPathWithRoundedRect:rect byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];

	CAShapeLayer *maskLayer;
    maskLayer       = [CAShapeLayer layer];
    maskLayer.frame = rect;
    maskLayer.path  = maskPath.CGPath;
	
	self.layer.mask = maskLayer;
}


- (void)shadowWithColor:(UIColor *)color offset:(CGSize)offset opacity:(CGFloat)opacity radius:(CGFloat)radius {
    self.clipsToBounds       = NO;
    self.layer.shadowColor   = color.CGColor;
    self.layer.shadowOffset  = offset;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowRadius  = radius;
}



- (void)removeFromSuperviewWithFadeDuration:(NSTimeInterval)duration {
	[UIView beginAnimations: nil context: NULL];
	[UIView setAnimationBeginsFromCurrentState: YES];
	[UIView setAnimationDuration: duration];
	[UIView setAnimationDelegate: self];
	[UIView setAnimationDidStopSelector: @selector(removeFromSuperview)];
	self.alpha = 0.0;
	[UIView commitAnimations];
}

- (void)addSubview:(UIView *)subview withTransition:(UIViewAnimationTransition)transition duration: (NSTimeInterval)duration {
	[UIView beginAnimations: nil context: NULL];
	[UIView setAnimationDuration: duration];
	[UIView setAnimationTransition: transition forView: self cache: YES];
	[self addSubview: subview];
	[UIView commitAnimations];
}

- (void)removeFromSuperviewWithTransition:(UIViewAnimationTransition)transition duration:(NSTimeInterval)duration {
	[UIView beginAnimations: nil context: NULL];
	[UIView setAnimationDuration: duration];
	[UIView setAnimationTransition: transition forView: self.superview cache: YES];
	[self removeFromSuperview];
	[UIView commitAnimations];
}

- (void)rotateByAngle:(CGFloat)angle
			 duration:(NSTimeInterval)duration
		  autoreverse:(BOOL)autoreverse
		  repeatCount:(CGFloat)repeatCount
	   timingFunction:(CAMediaTimingFunction *)timingFunction {

	CABasicAnimation *rotation;

    rotation                     = [CABasicAnimation animationWithKeyPath: @"transform.rotation"];
    rotation.toValue             = [NSNumber numberWithFloat: degToRad(angle)];
    rotation.duration            = duration;
    rotation.repeatCount         = repeatCount;
    rotation.autoreverses        = autoreverse;
    rotation.removedOnCompletion = NO;
    rotation.fillMode            = kCAFillModeBoth;
    rotation.timingFunction      = timingFunction != nil ? timingFunction : [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseInEaseOut];
	[self.layer addAnimation: rotation forKey: @"rotationAnimation"];
}



- (void)moveToPoint:(CGPoint)newPoint
		   duration:(NSTimeInterval)duration
		autoreverse:(BOOL)autoreverse
		repeatCount:(CGFloat)repeatCount
	 timingFunction:(CAMediaTimingFunction *)timingFunction {
	
	CABasicAnimation *move;

    move                     = [CABasicAnimation animationWithKeyPath: @"position"];
    move.toValue             = [NSValue valueWithCGPoint: newPoint];
    move.duration            = duration;
    move.removedOnCompletion = NO;
    move.repeatCount         = repeatCount;
    move.autoreverses        = autoreverse;
    move.fillMode            = kCAFillModeBoth;
    move.timingFunction      = timingFunction != nil ? timingFunction : [CAMediaTimingFunction functionWithName: kCAMediaTimingFunctionEaseInEaseOut];
	[self.layer addAnimation: move forKey: @"positionAnimation"];
}


@end
