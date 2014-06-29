//
//  XibView.m
//  XibInStoryboard
//
//  Created by matouka-suzuki on 2014/06/29.
//  Copyright (c) 2014年 matouka-suzuki. All rights reserved.
//

#import "XibView.h"

@implementation XibView

// This method is called from Storyboard.
- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        if (!self.subviews.count) {
            UIView *subview = [[NSBundle mainBundle] loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil][0];
            subview.frame = self.bounds;
            // Maybe, this code causes IBOulet bug...
            [self addSubview:subview];
        }
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
