//
//  ViewController.m
//  7.4.2
//
//  Created by 李维佳 on 2017/3/31.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //初始化UIButton对象
    UIButton *myButton = [UIButton buttonWithType:UIButtonTypeCustom];
    myButton.frame = CGRectMake(50, 50, 250, 50);
    [myButton setTitle:@"正常状态" forState:UIControlStateNormal];
    [myButton setTitle:@"高亮状态" forState:UIControlStateHighlighted];
    [myButton setImage:[UIImage imageNamed:@"99logo"] forState:UIControlStateNormal];
    [myButton setImage:[UIImage imageNamed:@"highlighted"] forState:UIControlStateHighlighted];
    myButton.backgroundColor = [UIColor redColor];
    [myButton addTarget:self action:@selector(myAction:) forControlEvents:UIControlEventTouchUpInside];
    //通过代码调整
    myButton.imageEdgeInsets = UIEdgeInsetsMake(0, -30, 0, 0);
    myButton.titleEdgeInsets = UIEdgeInsetsMake(0, 30, 0, 0);
    //添加UIButton到控制器view
    [self.view addSubview:myButton];
}

-(void)myAction:(UIButton *) button {
    NSLog(@"按钮被点击了！");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
