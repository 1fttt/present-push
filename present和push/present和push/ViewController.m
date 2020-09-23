//
//  ViewController.m
//  present和push
//
//  Created by 房彤 on 2020/9/22.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor grayColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 200, 70, 40);
    [btn setTitle:@"present" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressNext) forControlEvents:UIControlEventTouchUpInside];
    btn.backgroundColor = [UIColor whiteColor];
    btn.layer.cornerRadius = 7;
    
    
    
}

- (void)pressNext {
    
    SecondViewController *two = [[SecondViewController alloc] init];
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:two];
    [self presentViewController:nav animated:YES completion:nil];
}




@end
