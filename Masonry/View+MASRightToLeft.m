//
//  UIView+MASRightToLeft.m
//  Masonry
//
//  Created by Timur Bernikowich on 6/3/16.
//  Copyright © 2016 Jonas Budelmann. All rights reserved.
//

#import "View+MASRightToLeft.h"
#import <objc/runtime.h>

@implementation MAS_VIEW (MASRightToLeft)

#pragma mark - Forced Direction

- (MASLayoutDirection)forcedDirection
{
    MASLayoutDirection direction = MASLayoutDirectionDefault;
    NSNumber *saved = objc_getAssociatedObject(self, @selector(forcedDirection));
    if (saved) {
        direction = saved.integerValue;
    }
    if (direction == MASLayoutDirectionDefault && self.superview) {
        direction = self.superview.forcedDirection;
    }
    return direction;
}

- (void)setForcedDirection:(MASLayoutDirection)forcedDirection
{
    objc_setAssociatedObject(self, @selector(forcedDirection), @(forcedDirection), OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

#pragma mark - Default Direction

static MASLayoutDirection sharedDefaultDirection = MASLayoutDirectionDefault;

+ (void)setDefaultDirection:(MASLayoutDirection)direction
{
    sharedDefaultDirection = direction;
}

+ (MASLayoutDirection)defaultDirection
{
    return sharedDefaultDirection;
}

@end
