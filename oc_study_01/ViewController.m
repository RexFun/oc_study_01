//
//  ViewController.m
//  oc_study_01
//
//  Created by mac373 on 15/8/27.
//  Copyright (c) 2015年 ole. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //实例化UIView,并居中
    CGRect viewRect = CGRectMake((self.view.frame.size.width-100)/2.0, (self.view.frame.size.height-100)/2.0, 100, 100);
    _mUIView = [[UIView alloc] initWithFrame:viewRect];
    _mUIView.backgroundColor = [UIColor orangeColor];
    //为myView添加点击事件
    _mUIView.userInteractionEnabled = YES;
    UITapGestureRecognizer * tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(sayHi)];
    [_mUIView addGestureRecognizer:tap];
    
    //实例化UIButton
    _mUIButton = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 50, 20)];
    [_mUIButton setTitle:@"按钮" forState:UIControlStateNormal];
    //为UIButton添加点击事件
    [_mUIButton addTarget:self action:@selector((sayHello)) forControlEvents:UIControlEventTouchUpInside];
    [_mUIView addSubview:_mUIButton];
    
    //实例化UIButtonSegue
    _mUIButtonSegue = [[UIButton alloc] initWithFrame:CGRectMake(0, 30, 50, 20)];
    [_mUIButtonSegue setTitle:@"跳转" forState:UIControlStateNormal];
    //为_mUIButtonSegue添加点击事件
    [_mUIButtonSegue addTarget:self action:@selector(jump) forControlEvents:UIControlEventTouchUpInside];
    [_mUIView addSubview:_mUIButtonSegue];
    
    //加载myView
    [self.view addSubview:_mUIView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)sayHi {
    //实例化toast
    UIAlertView* toast = [[UIAlertView alloc] initWithTitle:nil
                                                    message:@"hi world !"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:nil, nil];
    //显示toast
    [toast show];
    //关闭toast, 一秒后
    int duration = 1; // in seconds
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [toast dismissWithClickedButtonIndex:0 animated:YES];
    });
}

- (void)sayHello {
    //实例化toast
    UIAlertView *toast = [[UIAlertView alloc] initWithTitle:nil
                                                    message:@"hello world !"
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:nil, nil];
    //显示toast
    [toast show];
    //一秒后关闭toast
    int duration = 1; // in seconds
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, duration * NSEC_PER_SEC), dispatch_get_main_queue(), ^{
        [toast dismissWithClickedButtonIndex:0 animated:YES];
    });
}

- (void)jump {
    [self presentViewController:[[SecondViewController alloc]init] animated:YES completion:^{}];
}

@end
