
//
//  ClicpView.m
//  矩阵操作-1
//
//  Created by AmberWhiteSky on 15/8/26.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//

#import "ClicpView.h"

@implementation ClicpView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

/**
 *默认只会在view 第一次显示的时候调用
 **/

-(void) drawRect:(CGRect)rect {
      
    //画圆  上下文呢
    CGContextRef  context = UIGraphicsGetCurrentContext();
    
    //保存上下文
    CGContextSaveGState(context);
    
    CGContextAddEllipseInRect(context, CGRectMake(100, 100, 40, 40));
    //裁剪
    CGContextClip(context);
    //渲染view
    CGContextFillPath(context);
    
    //获取裁剪的图片
    //1.显示图片  图片要放在最后面
    UIImage *iamge = [UIImage  imageNamed:@"dabai"];
    [iamge drawAtPoint:CGPointMake(100, 100)];
    
    //裁剪完成恢复上下文
    CGContextRestoreGState(context);
    
    //画一个矩形
    CGContextAddRect(context, CGRectMake(0, 0, 50, 50));
    CGContextFillPath(context);
    
}
@end
