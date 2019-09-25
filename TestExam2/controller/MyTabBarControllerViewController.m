//
//  MyTabBarControllerViewController.m
//  TestExam2
//
//  Created by Dingjd on 23/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "MyTabBarControllerViewController.h"
#import "MyNavigationControllerViewController.h"
#import "HomeViewController.h"
#import "SysSetingViewController.h"

@interface MyTabBarControllerViewController ()

//@property(nonatomic,copy) NSMutableArray * controllerArray;

@end

@implementation MyTabBarControllerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    [[UITabBar appearance] setBarTintColor:[UIColor blackColor]];
//    [UITabBar appearance].translucent = NO;
    self.edgesForExtendedLayout=UIRectEdgeBottom;
    //UIView*tabbarBgView =[[UIView alloc]initWithFrame:CGRectMake(0,0,self.tabBar.frame.size.width,self.tabBar.frame.size.height)];
    
    //tabbarBgView.backgroundColor=kAppBarColor;
    
    //[self.tabBar insertSubview:self.tabBar BgViewatIndex:0];
    

    self.view.backgroundColor = [UIColor colorWithRed:58.0/255 green:108.0/255 blue:145.0/255 alpha:1.0];
//
//    self.tabBar.backgroundColor=[UIColor colorWithRed:91.0/255.0 green:166.0/255.0 blue:221.0/255.0 alpha:1];
    [[UITabBar appearance] setBackgroundImage:[UIImage new]];
    [[UITabBar appearance] setBackgroundColor:[UIColor colorWithRed:91.0/255.0 green:166.0/255.0 blue:221.0/255.0 alpha:1]];
    
    [self addChildViewControllers];
}


- (void)addChildViewControllers

{
    //视图控制器名称  按照你自己所管理的控制器来定义
    
    //[UITabBarItem appearance];
    
    
    NSMutableArray *array = [NSMutableArray arrayWithArray:@[@"HomeViewController",@"BlocMsgViewController",@"ViewController",@"SysSetingViewController"]];
    
    //设置对应tabbar图片
    
    NSArray *imgArray = @[@"tabbar11",@"tabbar22",@"tabbar33",@"tabbar44"];
    
    //设置对应tabbar选中图片
    
    NSArray *selectImageArray = @[@"tabbar1",@"tabbar2",@"tabbar3",@"tabbar4"];
    
    NSArray *titles = @[@"贵宾用户",@"集团讯息",@"信息",@"系统设置"];
    
    for(int i = 0;i < 4;i++)
        
    {
        //使用NSClassFromString来进行不确定的类进行初始化。
        
        UIViewController *vc = [[NSClassFromString(array[i]) alloc] init];
        
        MyNavigationControllerViewController *nav = [[MyNavigationControllerViewController alloc] initWithRootViewController:vc];
        
    //    vc.title = titles[i];
        
        nav.tabBarItem.title = titles[i];
        
        nav.tabBarItem.image = [[UIImage imageNamed:imgArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        nav.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
       [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:74/255.0 green:126/255.0 blue:163/255.0 alpha:1],NSForegroundColorAttributeName,[UIFont fontWithName:@"fontSize"size:12.0f],NSFontAttributeName,nil] forState:UIControlStateNormal];

        NSDictionary *map = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont fontWithName:@"fontSize"size:12.0f],NSFontAttributeName,nil];
        
        [[UITabBarItem appearance] setTitleTextAttributes:map forState:UIControlStateSelected];
        
        NSLog(@"pictrue=====%@",selectImageArray[i]);
        
        [array replaceObjectAtIndex:i withObject:nav];
        
    }
    NSLog(@"ok....");
    self.viewControllers = array;

    self.tabBar.tintColor = [UIColor colorWithRed:58.0/255.0 green:108.0/255.0 blue:145.0/255.0 alpha:1];
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
