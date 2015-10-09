//
//  SecondViewController.m
//  UITest
//
//  Created by 李金柱 on 15/9/26.
//  Copyright (c) 2015年 李金柱. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
{
    CAGradientLayer *_gradientLayer;
}
@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.frame = CGRectMake(0, 10, 100, 50);
    
    [button setTitle:@"返回" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(backClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
   
    if ([self.bgColor isEqualToString:@"white"]) {
        self.view.backgroundColor = [UIColor whiteColor];
    }else if ([self.bgColor isEqualToString:@"black"]) {
      self.view.backgroundColor = [UIColor blackColor];
    }else if([self.bgColor isEqualToString:@"red"]) {
       self.view.backgroundColor = [UIColor redColor];
    }else if ([self.bgColor isEqualToString:@"blue"]) {
      self.view.backgroundColor = [UIColor blueColor];
    }else if ([self.bgColor isEqualToString:@"green"]) {
       self.view.backgroundColor = [UIColor greenColor];
    }else if ([self.bgColor isEqualToString:@"brown"]) {
        self.view.backgroundColor = [UIColor brownColor];
    }
    
    //self.view.backgroundColor = [UIColor whiteColor];
    //普通效果
    //[self showText];
    //渐变效果
    //[self createLabel];
    //跑马灯效果
    //[self textrun];
    // 自适应闪烁
    //[self show];
    //更改后效果
    [self newUI];
}
- (void)backClick{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)newUI{
    UILabel *label = [[UILabel alloc]init];
    
    if (self.isV) {
        label.frame = CGRectMake(0, 60, self.view.bounds.size.height, 300);
    }else{
      label.frame = CGRectMake(0, 100, self.view.bounds.size.width, 300);
    }
    
       label.text = self.text;
   
    label.textAlignment = NSTextAlignmentCenter;
    if ([self.textColor isEqualToString:@"red"]) {
        label.textColor = [UIColor redColor];
    }else if ([self.textColor isEqualToString:@"yellow"]) {
        label.textColor = [UIColor yellowColor];
    }else if([self.textColor isEqualToString:@"blue"]) {
        label.textColor = [UIColor blueColor];
    }else if ([self.textColor isEqualToString:@"green"]) {
        label.textColor = [UIColor greenColor];
    }else if ([self.textColor isEqualToString:@"orange"]) {
        label.textColor = [UIColor orangeColor];
    }else if ([self.textColor isEqualToString:@"purple"]) {
        label.textColor = [UIColor purpleColor];
    }

    label.font = [UIFont systemFontOfSize:400];
    label.tag = 101;
    label.adjustsFontSizeToFitWidth = YES;
    
    [self.view addSubview:label];
    if (self.isMoving ) {
         [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(newTimer) userInfo:nil repeats:YES];
    }
}
- (void)newTimer{
    UILabel *label = (UILabel *)[self.view viewWithTag:101];
    static int x ;
    CGRect frame = label.frame;
    if (!self.speed) {
        x = 1;
        
        if (frame.origin.x + self.view.frame.size.width< 0) {
            label.center = CGPointMake(self.view.frame.size.width + 187.5, 200);
         
        }
   
        CGPoint center = label.center;
        
        [UIView beginAnimations:@"test" context:NULL];
        //设置动画时间
        [UIView setAnimationDuration:1];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationRepeatAutoreverses:NO];
        [UIView setAnimationRepeatCount:9999];
        center.x -= x;
        label.center = center;
        
        [UIView commitAnimations];
        
    }else{
        x = self.speed;

        if (frame.origin.x > self.view.frame.size.width) {
            label.center = CGPointMake(-187.5, 200);
            
        }
        
        CGPoint center = label.center;
        
        [UIView beginAnimations:@"test" context:NULL];
        //设置动画时间
        [UIView setAnimationDuration:1];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationRepeatAutoreverses:NO];
        [UIView setAnimationRepeatCount:9999];
        center.x += x;
        //center.y += y;
        label.center = center;
        
        [UIView commitAnimations];
        
    }
    
}
- (void)show{
    
   UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 500)];
   
    label.adjustsFontSizeToFitWidth = YES;
    label.text = self.text;
   
    label.textAlignment = NSTextAlignmentCenter;
    label.font = [UIFont systemFontOfSize:400];
    label.tag = 101;
    [self.view addSubview:label];
    //创建渐变图层
    _gradientLayer = [CAGradientLayer layer];
    
    _gradientLayer.frame = label.frame;
    _gradientLayer.colors = @[(id)[self randomColor].CGColor,(id)[self randomColor].CGColor,(id)[self randomColor].CGColor,(id)[self randomColor].CGColor];
    [self.view.layer addSublayer:_gradientLayer];
    
    _gradientLayer.mask = label.layer;
    
    label.frame = _gradientLayer.bounds;
    //[NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(newTimer) userInfo:nil repeats:YES];
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(textColorChange) userInfo:nil repeats:YES];
    

    
}
- (void)showText{
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 300, 70)];
    //label.center = self.view.center;
    label.text = @"哈哈";
    label.font = [UIFont systemFontOfSize:60];
    label.tag = 11;

    if ([self.textColor isEqualToString:@"red"]) {
        label.textColor = [UIColor redColor];
    }else if ([self.textColor isEqualToString:@"yellow"]) {
        label.textColor = [UIColor yellowColor];
    }else if([self.textColor isEqualToString:@"blue"]) {
        label.textColor = [UIColor blueColor];
    }else if ([self.textColor isEqualToString:@"green"]) {
        label.textColor = [UIColor greenColor];
    }else if ([self.textColor isEqualToString:@"orange"]) {
        label.textColor = [UIColor orangeColor];
    }else if ([self.textColor isEqualToString:@"purple"]) {
        label.textColor = [UIColor purpleColor];
    }
    [self.view addSubview:label];
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerRun) userInfo:nil repeats:YES];
    
    
    [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(star) userInfo:nil repeats:YES];

}

- (void)star{
    UILabel *label = (UILabel *)[self.view viewWithTag:11];
    label.alpha = 1;
    [UIView animateWithDuration:1 animations:^{
        label.alpha = 0;
    }];

}
- (void)timerRun{
    
    UILabel *label = (UILabel *)[self.view viewWithTag:101];
    static int x , y ;
    CGRect frame = label.frame;
    if (!self.speed) {
        x = 1;
        y = 1;
        
        if (frame.origin.x > (self.view.frame.size.width - frame.size.width)) {
            x = 1 ;
           // label.center = CGPointMake(170, 135);
        }
        if (frame.origin.y > self.view.frame.size.height) {
            label.center = CGPointMake(170, 135);
            
            //y = -100;
        }
        if (frame.origin.x <= 0) {
            x = 10;
        }
        if (frame.origin.y <= 0) {
            y = 10;
        }
        
        CGPoint center = label.center;
      
        
        [UIView beginAnimations:@"test" context:NULL];
        //设置动画时间
        [UIView setAnimationDuration:10];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationRepeatAutoreverses:NO];
        [UIView setAnimationRepeatCount:9999];
         center.x += x;
         //center.y += y;
        label.center = center;
        
        [UIView commitAnimations];
        
    }else {
        x = self.speed;
        y = self.speed;
        
        if (frame.origin.x > (self.view.frame.size.width - frame.size.width)) {
            x = -self.speed ;
        }
        if (frame.origin.y > (self.view.frame.size.height - frame.size.height)) {
            label.center = CGPointMake(170, 135);

            //y = -self.speed;
        }
        if (frame.origin.x <= 0) {
            x = self.speed;
        }
        if (frame.origin.y <= 0) {
            y = self.speed;
        }
        
        CGPoint center = label.center;
        
        [UIView beginAnimations:@"test" context:NULL];
        //设置动画时间
        [UIView setAnimationDuration:10];
        [UIView setAnimationCurve:UIViewAnimationCurveLinear];
        [UIView setAnimationDelegate:self];
        [UIView setAnimationRepeatAutoreverses:NO];
        [UIView setAnimationRepeatCount:9999];
        center.x += x;
        center.y += y;
        label.center = center;
        
        [UIView commitAnimations];
        
    }
    
}

- (void)createLabel{
    
    UILabel *label = [[UILabel alloc]init];
    label.text = @"文字渐变闪烁效果展示";
    [label sizeToFit];
    label.center = CGPointMake(200, 400);
    [self.view addSubview:label];
    //创建渐变图层
    _gradientLayer = [CAGradientLayer layer];
    
    _gradientLayer.frame = label.frame;
    _gradientLayer.colors = @[(id)[self randomColor].CGColor,(id)[self randomColor].CGColor,(id)[self randomColor].CGColor,(id)[self randomColor].CGColor];
  
    [self.view.layer addSublayer:_gradientLayer];
    
    _gradientLayer.mask = label.layer;
    
    label.frame = _gradientLayer.bounds;
    [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(textColorChange) userInfo:nil repeats:YES];
//    CADisplayLink *link = [CADisplayLink displayLinkWithTarget:self selector:@selector(textColorChange)];
//    [link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    
    
}
- (UIColor *)randomColor{
    CGFloat  red = arc4random_uniform(256)/255.0;
    CGFloat  green = arc4random_uniform(256)/255.0;
    CGFloat  blue = arc4random_uniform(256)/255.0;

    return  [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
    
}
- (void)textColorChange{
    _gradientLayer.colors = @[(id)[self randomColor].CGColor,(id)[self randomColor].CGColor,(id)[self randomColor].CGColor,(id)[self randomColor].CGColor,(id)[self randomColor].CGColor];
  
    
    
}
//跑马灯效果
- (void)textrun{
    UILabel *label1 = [[UILabel alloc]initWithFrame:CGRectMake(10, 200, 200, 100)];
    label1.text = @"跑马灯效果实现" ;
    
    [self.view addSubview:label1];
    
    CGRect frame = label1.frame;
    CGSize dim = [label1.text sizeWithAttributes:@{@"font":label1.font}];
    frame.origin.x = dim.width > 320 ? dim.width : 320;
    [label1 setFrame:CGRectMake(frame.origin.x, frame.origin.y, dim.width, dim.height)];
    
    [UIView beginAnimations:@"test" context:NULL];
    //设置动画时间
    [UIView setAnimationDuration:10];
    [UIView setAnimationCurve:UIViewAnimationCurveLinear];
    [UIView setAnimationDelegate:self];
    [UIView setAnimationRepeatAutoreverses:NO];
    [UIView setAnimationRepeatCount:9999];
    
    frame.origin.x = -(dim.width + 60);
    label1.frame = frame;
    
    [UIView commitAnimations];

}



- (BOOL) shouldAutorotateToInterfaceOrientation:
(UIInterfaceOrientation)toInterfaceOrientation {
    if (_isV) {
         return (toInterfaceOrientation == UIInterfaceOrientationLandscapeRight);
    }else{
        return nil;
    }
   

    
}
- (NSUInteger)supportedInterfaceOrientations {
    if (_isV) {
        return UIInterfaceOrientationMaskLandscapeRight;
    }else{
         return 0;
    }
       
    
}



@end
