//
//  ThirdViewController.m
//  present和push
//
//  Created by 房彤 on 2020/9/22.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ThirdViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithWhite:0.8 alpha:1];

    UIButton *back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:back];
    back.frame = CGRectMake(100, 200, 70, 40);
    back.backgroundColor = [UIColor whiteColor];
    back.layer.cornerRadius = 7;
    [back setTitle:@"back" forState:UIControlStateNormal];
    [back addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressBack {
    
    //返回上一级
    //[self dismissViewControllerAnimated:NO completion:nil];
    
    //使用通知，在secondView接收通知， 执行secondView的dismiss方法 返回第一个页面
    //[[NSNotificationCenter defaultCenter] postNotificationName:@"name" object:nil];
    
    //使用UIViewController的属性 presentingViewController 返回两级
//    UIViewController *present = self.presentingViewController;
//    present = present.presentingViewController;
//    [present dismissViewControllerAnimated:YES completion:nil];
//
//    [self.presentingViewController.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    
    //同样适用UIViewController的属性 presentingViewController 返回第一个页面
    UIViewController *rootVC =  self.presentingViewController;
     while  (rootVC. presentingViewController ) {
              rootVC = rootVC.presentingViewController ;
             }
    [rootVC dismissViewControllerAnimated:YES completion:nil];
}

@end
