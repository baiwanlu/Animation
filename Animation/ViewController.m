//
//  ViewController.m
//  Animation
//
//  Created by 道标朱 on 16/9/29.
//  Copyright © 2016年 道标朱. All rights reserved.
//

#import "ViewController.h"
#import "CoreAnimationEffect.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.frame = CGRectMake(80, 60, 20, 20);
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnClick
{
     UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 100, 200, 200)];
    [CoreAnimationEffect animationRotateAndScaleEffects:view];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
