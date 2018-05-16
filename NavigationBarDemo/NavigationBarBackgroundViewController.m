//
//  NavigationBarBackgroundViewController.m
//  NavigationBarDemo
//
//  Created by subo on 15/9/12.
//  Copyright © 2015年 FengFeiYang. All rights reserved.
//

#import "NavigationBarBackgroundViewController.h"

@interface NavigationBarBackgroundViewController ()

@end

@implementation NavigationBarBackgroundViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"设置导航栏的背景颜色";
    
    //通过barTintColor来设置背景色
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    self.navigationController.navigationBar.tintColor = [UIColor greenColor];
    
    //注意，如果是在通过navigationController push的 VC，需要通过设置barStyle为UIBarStyleBlack，才会使设置的Status Bar的外观生效
    self.navigationController.navigationBar.barStyle = UIBarStyleBlack;
}


- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    
    //恢复到默认的设置
    self.navigationController.navigationBar.barTintColor = nil;
    self.navigationController.navigationBar.tintColor = nil;
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
}

@end
