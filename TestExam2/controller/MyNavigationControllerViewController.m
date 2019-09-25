//
//  MyNavigationControllerViewController.m
//  TestExam2
//
//  Created by Dingjd on 23/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "MyNavigationControllerViewController.h"

@interface MyNavigationControllerViewController ()

@end

@implementation MyNavigationControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //设置导航栏返回按钮的颜色
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:91.0/255.0 green:166.0/255.0 blue:221.0/255.0 alpha:1]];
    [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                          [UIColor whiteColor], NSForegroundColorAttributeName,
                                                          [UIFont systemFontOfSize:20], NSFontAttributeName, nil]];
    
//    [self.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor whiteColor],NSFontAttributeName:[UIFont systemFontOfSize:20.0]}];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:nil action:nil];
    viewController.navigationItem.backBarButtonItem = backItem;
    [super pushViewController:viewController animated:animated];
    
    CGRect frame = self.tabBarController.tabBar.frame;
    frame.origin.y = [UIScreen mainScreen].bounds.size.height - frame.size.height;
    self.tabBarController.tabBar.frame = frame;
}
@end
