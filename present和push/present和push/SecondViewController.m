//
//  SecondViewController.m
//  present和push
//
//  Created by 房彤 on 2020/9/22.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SecondViewController.h"
#import "ThirdViewController.h"
#import "NextViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"一";
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.6 alpha:1];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(150, 200, 70, 40);
    btn.backgroundColor = [UIColor whiteColor];
    btn.layer.cornerRadius = 7;
    [btn setTitle:@"present" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressNext) forControlEvents:UIControlEventTouchUpInside];
    
    
    UIButton *back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:back];
    back.frame = CGRectMake(140, 300, 120, 40);
    [back setTitle:@"dismissback" forState:UIControlStateNormal];
    back.layer.cornerRadius = 7;
    [back addTarget:self action:@selector(pressBack) forControlEvents:UIControlEventTouchUpInside];
    back.backgroundColor = [UIColor whiteColor];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(pressBack) name:@"name" object:nil];
    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItem = right;
    
    
}

- (void)pressNext {
    ThirdViewController *three = [[ThirdViewController alloc] init];
    [self presentViewController:three animated:YES completion:nil];
}


- (void)pressBack {
    [self dismissViewControllerAnimated:NO completion:nil];
    
}


- (void)next {
    
    NextViewController *next = [[NextViewController alloc] init];
    [self.navigationController pushViewController:next animated:YES];
    
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
