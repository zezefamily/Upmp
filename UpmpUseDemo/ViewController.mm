//
//  ViewController.m
//  UpmpUseDemo
//
//  Created by zezefamily on 15/7/27.
//  Copyright (c) 2015年 zezefamily. All rights reserved.
//

#import "ViewController.h"
#import "UPPayPluginPro.h"
@interface ViewController ()<UPPayPluginDelegate>

@end

@implementation ViewController

- (IBAction)payClick:(UIButton *)sender {
    
    //1.提交订单信息,向自身服务器请求【支付流水号】
    //.............模拟
    NSString *waterNumber = @"2015072800001120";
    
    //2.开始支付
    //@param mode 环境模式
    //@"00":代表接入生产环境(正式版 本需要); @"01":代表接入开发测试环境(测 试版本需要);
    //@param tn 交易流水号
    BOOL isStart = [UPPayPluginPro startPay:waterNumber mode:@"01" viewController:self delegate:self];
    NSLog(@"isStart == %d",isStart);
    
}
#pragma mark - 银联支付回调
- (void)UPPayPluginResult:(NSString *)result
{
    //success、fail、cancel
    //支付成功，支付失败，支付取消
    if([result isEqualToString:@"支付成功"]){
        // 向后台二次确认支付结果
        //...................
        
    }else if ([result isEqualToString:@"支付失败"]){
        
    }else {
        
        
    }
    
}


- (void)viewDidLoad {
    
    [super viewDidLoad];
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
