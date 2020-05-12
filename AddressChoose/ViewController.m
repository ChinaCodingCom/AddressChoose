//
//  ViewController.m
//  AddressChoose
//
//  Created by zhouzhongliang on 2019/1/19.
//  Copyright © 2019 zhouzhongliang. All rights reserved.
//

//屏幕宽度
#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
//屏幕高度
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height

#import "ViewController.h"
#import "CEAddressView.h"

@interface ViewController ()

@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) CEAddressView *addressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
 
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, SCREEN_WIDTH -200, 50)];
    self.button.backgroundColor = [UIColor redColor];
    [self.button setTitle:@"点击选择地址" forState:UIControlStateNormal];
    self.button.titleLabel.numberOfLines = 0;
    self.button.titleLabel.font = [UIFont systemFontOfSize:15.f];
    [self.button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
    self.button.layer.cornerRadius = 4;
    self.button.clipsToBounds = YES;
    
}

- (void)buttonClick{
    
    if (!self.addressView) {
        
        self.addressView = [[CEAddressView alloc] initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].keyWindow.frame.size.width, [UIApplication sharedApplication].keyWindow.frame.size.height)];
    }
    
    __weak typeof(self) weakSelf = self;

    self.addressView.block = ^(NSDictionary *addressDic){
        
        NSLog(@"addressDic = %@",addressDic);
        //[self.btn setTitle:addressStr forState:UIControlStateNormal];
        [weakSelf.button setTitle:[NSString stringWithFormat:@"%@ %@ %@",addressDic[@"province"],addressDic[@"city"],addressDic[@"area"]] forState:UIControlStateNormal];
    };
    [self.addressView showView:self.view];
    
}


@end
