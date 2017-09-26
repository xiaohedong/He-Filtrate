//
//  ViewController.m
//  RHFiltrate
//
//  Created by 郭人豪 on 2017/3/4.
//  Copyright © 2017年 Abner_G. All rights reserved.
//

#import "ViewController.h"
#import "RHFiltrateView.h"

@interface ViewController () <RHFiltrateViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self test];
}


- (void)test {
    
    self.view.backgroundColor = Color_LightGray;
    
    NSArray *arrTitle = @[@"投资期限", @"预期年化收益", @"项目类型"];
    NSArray *arr1 = @[@"全部", @"3个月以内", @"3至6个月", @"6个月以上"];
    NSArray *arr2 = @[@"全部", @"6%以下", @"6%至8%", @"8%至10%", @"10%至12%", @"12%以上"];
    NSArray *arr3 = @[@"全部", @"红宝理", @"预付宝", @"优企宝", @"小包贷"];
    RHFiltrateView * filtrate = [[RHFiltrateView alloc] initWithTitles:arrTitle items:@[arr1, arr2, arr3]];
    
    filtrate.frame = self.view.bounds;
    filtrate.delegate = self;
    
    [self.view addSubview:filtrate];
}

#pragma mark - filetrate delegate

- (void)filtrateView:(RHFiltrateView *)filtrateView didSelectAtIndexPath:(NSIndexPath *)indexPath {
    
    NSLog(@"%@", indexPath);
}


@end
