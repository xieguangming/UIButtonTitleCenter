//
//  ViewController.m
//  Btn的title居中
//
//  Created by 谢光明 on 16/11/25.
//  Copyright © 2016年 xiegm. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton  *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 100, 120, 60);
    
    //config btn's title
    NSString *title = @"11-28*8:00";
    NSArray *stringArr = [title componentsSeparatedByString:@"*"];
    NSString *endTitle = [NSString stringWithFormat:@"%@\n%@",stringArr[0],stringArr[1]];
    btn.titleEdgeInsets = UIEdgeInsetsMake(0, 20, 0, 0);
    btn.titleLabel.numberOfLines = 0;
    [btn setTitle:endTitle forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
     btn.backgroundColor = [UIColor greenColor];
    [self.view addSubview:btn];   //add btn to the view
    
    
    /**
     思路：
     1.    首先把字符串按你想要的分割法分成数组
     2.    然后重新拼接字符串，数组之间用/n连接
     3.    记得设置numberOfLines   还有这时候 button的titleLabel  textAlignment 设置居中没有用的。要设置titleEdgeInsets
     */
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
