//
//  ViewController.m
//  TextField
//
//  Created by fzy on 2017/5/9.
//  Copyright © 2017年 fzy. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+shake.h"
@interface ViewController ()
@property(nonatomic,strong)UITextField *textField;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.textField = [[UITextField alloc]init];
    self.textField.backgroundColor = [UIColor redColor];
    self.textField.frame  = CGRectMake(100, 100, 200, 30);
    self.textField.backgroundColor = [UIColor greenColor];
    self.textField.text = @"抖动";
    [self.view addSubview:self.textField];

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake( 100, 150, 200, 40);
    [btn setBackgroundColor:[UIColor greenColor]];
    [btn setTitle:@"点击抖动" forState:UIControlStateNormal];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
    
}
-(void)click{
    [self.textField shake];
}

@end
