
//
//  MyView.m
//  矩阵操作-1
//
//  Created by AmberWhiteSky on 15/8/26.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//

#import "MyView.h"

@implementation MyView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

-(void) drawRect:(CGRect)rect {
    CGContextRef  context = UIGraphicsGetCurrentContext();
    
    //保存上下文状态
    CGContextSaveGState(context);
    
    CGContextRotateCTM(context, M_PI_4*0.3);
    CGContextScaleCTM(context, 0.5, 0.5);
    CGContextTranslateCTM(context, 0, 150);
    
    CGContextAddRect(context, CGRectMake(10, 10, 50, 50));
    
    //渲染路径到view上
    CGContextStrokePath(context);
    //恢复上下文状态
    CGContextRestoreGState(context);
    
    CGContextAddEllipseInRect(context, CGRectMake(100, 100, 100, 100));
    CGContextMoveToPoint(context, 100, 100);
    CGContextAddLineToPoint(context, 255, 200);
    
    //矩阵操作
    //    CGContextScaleCTM(context, 0.5, 0,5);
    CGContextStrokePath(context);
}
@end
