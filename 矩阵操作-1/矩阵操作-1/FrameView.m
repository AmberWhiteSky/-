//
//  FrameView.m
//  矩阵操作-1
//
//  Created by AmberWhiteSky on 15/8/26.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//

#import "FrameView.h"

@implementation FrameView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


-(void)  drawRect:(CGRect)rect  {
    NSLog(@"第一次---%f",self.radius);

    CGContextRef  context =UIGraphicsGetCurrentContext();
    
    CGContextAddArc(context, 125, 125, self.radius, 0, M_PI*2, 0);
    CGContextFillPath(context);
}

-(void) setRadius:(float)radius {
    _radius =radius;
    [self setNeedsDisplay];
}

@end
