//
//  NextViewController.m
//  present和push
//
//  Created by 房彤 on 2020/9/22.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "NextViewController.h"
#import "NextNextViewController.h"

@interface NextViewController ()

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"二";
    
    self.view.backgroundColor = [UIColor colorWithWhite:0.92 alpha:1];
    UIBarButtonItem *left = [[UIBarButtonItem alloc] initWithTitle:@"pop" style:UIBarButtonItemStylePlain target:self action:@selector(back)];
    self.navigationItem.leftBarButtonItem = left;

    
    UIBarButtonItem *right = [[UIBarButtonItem alloc] initWithTitle:@"push" style:UIBarButtonItemStylePlain target:self action:@selector(next)];
    self.navigationItem.rightBarButtonItem = right;

    UIButton *back = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.view addSubview:back];
    back.frame = CGRectMake(100, 200, 100, 40);
    back.backgroundColor = [UIColor whiteColor];
    back.layer.cornerRadius = 7;
    [back setTitle:@"dismiss" forState:UIControlStateNormal];
    [back addTarget:self action:@selector(dismissBack) forControlEvents:UIControlEventTouchUpInside];

}

- (void)back {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)next {
    NextNextViewController *next = [[NextNextViewController alloc] init];
    [self.navigationController pushViewController:next animated:YES];
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
