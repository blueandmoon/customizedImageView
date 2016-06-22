//
//  CustomizedImageView.m
//  customizedImageView
//
//  Created by 李根 on 16/6/22.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "CustomizedImageView.h"

@implementation CustomizedImageView

- (void)drawRect:(CGRect)rect {
    [_image drawInRect:rect];
}

- (void)setImage:(UIImage *)image {
    _image = image;
    [self setNeedsDisplay];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
