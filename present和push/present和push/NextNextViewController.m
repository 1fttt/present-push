//
//  NextNextViewController.m
//  present和push
//
//  Created by 房彤 on 2020/9/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "NextNextViewController.h"

@interface NextNextViewController ()

@end

@implementation NextNextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor blueColor];
    self.title = @"三";
    
    UIButton *backButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:backButton];
    backButton.frame = CGRectMake(100, 200, 70, 40);
    backButton.backgroundColor = [UIColor whiteColor];
    backButton.layer.cornerRadius = 7;
    [backButton setTitle:@"返回一"forState:UIControlStateNormal];
    [backButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:back];
    back.frame = CGRectMake(100, 300, 100, 40);
    back.backgroundColor = [UIColor whiteColor];
    back.layer.cornerRadius = 7;
    [back setTitle:@"dismiss" forState:UIControlStateNormal];
    [back addTarget:self action:@selector(dismissBack) forControlEvents:UIControlEventTouchUpInside];
}

- (void)back {
    
    //返回上一级 （视图栈中）
    //[self.navigationController popToRootViewControllerAnimated:YES];
    
    //返回根视图
    //[self.navigationController popToRootViewControllerAnimated:YES];
    
    //返回指定页面
    [self.navigationController popToViewController:[self.navigationController.viewControllers objectAtIndex:0]  animated:YES];
}

- (void)dismissBack {
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
