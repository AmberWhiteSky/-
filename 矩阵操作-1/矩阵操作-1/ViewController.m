//
//  ViewController.m
//  矩阵操作-1
//
//  Created by AmberWhiteSky on 15/8/26.
//  Copyright (c) 2015年 AmberWhiteSky. All rights reserved.
//

#import "ViewController.h"
#import "FrameView.h"

@interface ViewController ()
- (IBAction)sizeChage:(UISlider *)sender;
@property (weak, nonatomic) IBOutlet FrameView *frameView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//进度条监听方法
- (IBAction)sizeChage:(UISlider *)sender {
    self.frameView.radius =sender.value;
    // 重绘  （这个方法内部会重新调用drawRect: 方法进行绘制）
//    [self.frameView setNeedsDisplay];
    
    NSLog(@"%f",sender.value);
}
@end
