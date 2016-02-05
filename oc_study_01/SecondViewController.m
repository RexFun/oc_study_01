//
//  View2Controller.m
//  oc_study_01
//
//  Created by mac373 on 16/1/19.
//  Copyright © 2016年 ole. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController

//可自定义属性实例名，（系统默认为:‘_属性实例名’）
//@synthesize UILabel = _mUILabel;
//@synthesize UIButton = _mUIButton;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mUILabel = [[UILabel alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)/2.0, (self.view.frame.size.height-100)/2.0, 100, 100)];
    _mUILabel.textColor = [UIColor whiteColor];
    _mUILabel.textAlignment = NSTextAlignmentCenter;
    _mUILabel.text = @"View 2";
    [self.view addSubview:_mUILabel];
    
    _mUIButtonBack = [[UIButton alloc] initWithFrame:CGRectMake((self.view.frame.size.width-100)/2.0, (self.view.frame.size.height)/2.0, 100, 50)];
    [_mUIButtonBack setTitle:@"返回" forState:UIControlStateNormal];
    [_mUIButtonBack addTarget:self action:@selector(jumpBack) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_mUIButtonBack];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) jumpBack {
    [self dismissViewControllerAnimated:YES completion:nil];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
