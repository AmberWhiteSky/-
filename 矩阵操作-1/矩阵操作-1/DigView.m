//
//  DigView.m
//  矩阵操作-1
//
//  Created by AmberWhiteSky on 15/8/26.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//

#import "DigView.h"
@interface DigView()
@property (nonatomic,assign) CGFloat snowY;
@end

@implementation DigView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */


-(void) awakeFromNib {
    
    
//    CADisplayLink *link =  [CADisplayLink  displayLinkWithTarget:self selector:@selector(setNeedsDisplay)];
//    [link  addToRunLoop:[NSRunLoop  mainRunLoop] forMode:NSDefaultRunLoopMode];
    
    [NSTimer  scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(setNeedsDisplay) userInfo:nil repeats:YES];
}


-(void)drawRect:(CGRect)rect {
    
    self.snowY +=10;
    
    if (self.snowY>= rect.size.height) {
        self.snowY =100;
    }
    
    UIImage  *image = [UIImage  imageNamed:@"dog"];
    //    [image  drawAtPoint:CGPointZero];
    [image  drawAtPoint:CGPointMake(0 , self.snowY)];
}



@end
