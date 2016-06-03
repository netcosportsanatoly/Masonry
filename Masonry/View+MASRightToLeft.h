//
//  UIView+MASRightToLeft.h
//  Masonry
//
//  Created by Timur Bernikowich on 6/3/16.
//  Copyright © 2016 Jonas Budelmann. All rights reserved.
//

#import "View+MASAdditions.h"

typedef NS_ENUM(NSInteger, MASLayoutDirection) {
    MASLayoutDirectionLeftToRight = -1,
    MASLayoutDirectionDefault = 0,
    MASLayoutDirectionRightToLeft = 1
};

@interface MAS_VIEW (MASRightToLeft)

@property (nonatomic) MASLayoutDirection forcedDirection;

+ (void)setDefaultDirection:(MASLayoutDirection)direction;
+ (MASLayoutDirection)defaultDirection;

@end
