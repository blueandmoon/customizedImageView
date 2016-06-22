//
//  ViewController.m
//  customizedImageView
//
//  Created by 李根 on 16/6/22.
//  Copyright © 2016年 ligen. All rights reserved.
//

#import "ViewController.h"
#import "CustomizedImageView.h"

@interface ViewController ()
@property(nonatomic, strong)CustomizedImageView *iv;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    _iv = [[CustomizedImageView alloc] init];
    [self.view addSubview:_iv];
    UIImage *image = [UIImage imageNamed:@"meiren"];
    _iv.image = image;
    _iv.frame = CGRectMake(100, 100, 200, 200 * image.size.height / image.size.width);
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.view addSubview:btn];
    btn.frame = CGRectMake(100, 10, 100, 30);
    btn.backgroundColor = [UIColor purpleColor];
    [btn setTitle:@"exchange image" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
    
}

//  系统的UIImageView点击可以切换图片, 而自定义的不会, 因为自定义的VIew换图片需要重新渲染一次图片, 所以要重写setImage方法
- (void)click:(id)sender {
    _iv.image = [UIImage imageNamed:@"xiaoqingxin"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
