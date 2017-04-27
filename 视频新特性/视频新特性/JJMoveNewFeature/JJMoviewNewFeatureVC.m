//
//  JJMoviewNewFeatureVC.m
//  动画新特性界面
//
//  Created by 罗文琦 on 2017/4/26.
//  Copyright © 2017年 罗文琦. All rights reserved.
//

#import "JJMoviewNewFeatureVC.h"
#import "JJMainVC.h"

@interface JJMoviewNewFeatureVC ()

@end

@implementation JJMoviewNewFeatureVC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor =[UIColor whiteColor];
    [self.moviePlayer setControlStyle:MPMovieControlStyleNone];
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(changeRootViewContoller:) name:MPMoviePlayerPlaybackDidFinishNotification object:nil];
    
    
    //进入按钮
    UIButton *enterMainButton = [[UIButton alloc] init];
    _enterMainButton = enterMainButton;
    enterMainButton.frame = CGRectMake(24, [UIScreen mainScreen].bounds.size.height - 80, [UIScreen mainScreen].bounds.size.width - 48, 48);
    //绘制圆角
    enterMainButton.layer.borderWidth = 1;
    enterMainButton.layer.cornerRadius = 24;
    enterMainButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [enterMainButton setTitle:@"进入应用" forState:UIControlStateNormal];
    [self.view addSubview:enterMainButton];
    
    
    [enterMainButton addTarget:self action:@selector(changeRootViewContoller:) forControlEvents:UIControlEventTouchUpInside];
     self.moviePlayer.view.alpha = 0;
    [UIView animateWithDuration:2 animations:^{
        self.moviePlayer.view.alpha = 1;
        [self.moviePlayer prepareToPlay];
    }];
}


#pragma mark - 更改根控制器
-(void)changeRootViewContoller:(UIButton*)sender{
    [UIView animateWithDuration:1 animations:^{
        self.view.alpha = 0;
    } completion:^(BOOL finished) {
        [UIApplication sharedApplication].keyWindow.rootViewController = [[JJMainVC alloc]init];
    }];
}

#pragma mark - 移除通知
-(void)dealloc{
    [[NSNotificationCenter defaultCenter] removeObserver:MPMoviePlayerPlaybackDidFinishNotification];
}


@end
