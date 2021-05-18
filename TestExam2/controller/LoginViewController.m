//
//  LoginViewController.m
//  TestExam2
//
//  Created by Dingjd on 20/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "LoginViewController.h"
#import "MyTabBarControllerViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:58.0/255 green:108.0/255 blue:145.0/255 alpha:1.0];
    
    UIImageView *logoView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 55, 300, 150)];
    UIImage *logoView2 = [UIImage imageNamed:@"2.png"];
    [logoView setImage:logoView2];
    [self.view addSubview:logoView];
    
    // Do any additional setup after loading the view.
    UITextField *phone = [[UITextField alloc] initWithFrame:CGRectMake(0, 250, self.view.frame.size.width, 50)];
    phone.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
    phone.placeholder = @"手机号码";
    phone.borderStyle = UITextBorderStyleNone;
    phone.font = [UIFont systemFontOfSize:20];
    phone.textColor = [UIColor whiteColor];
    phone.autocapitalizationType = UITextAutocapitalizationTypeNone;//不自动首字母大写，默认首字母会大写
    
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(13, 13, 45, 25)];
    UIImage *image = [UIImage imageNamed:@"1.png"];
    [imgView setImage:image];
    [phone addSubview:imgView];
    
    //添加一个透明的view设置左侧缩进
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 128, 20)];
    view.backgroundColor           = [UIColor clearColor];
    phone.leftView                 = view;
    phone.leftViewMode             = UITextFieldViewModeAlways;
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(62, 16, 80, 20)];
    label.text = @"+853 v";
    label.textColor = [UIColor lightGrayColor];
    [phone addSubview:label];
    
    UITextField *pwd = [[UITextField alloc] initWithFrame:CGRectMake(0, 302, self.view.frame.size.width, 50)];
    pwd.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
    pwd.secureTextEntry = YES;//密码框！
    pwd.borderStyle = UITextBorderStyleNone;
    pwd.font = [UIFont systemFontOfSize:20];
    pwd.placeholder = @"密码";
    pwd.textColor = [UIColor whiteColor];
    UIView *view2 = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 15, 20)];
    view.backgroundColor          = [UIColor clearColor];
    pwd.leftView                  = view2;
    pwd.leftViewMode              = UITextFieldViewModeAlways;
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 355, self.view.frame.size.width-15, 30);
    btn.titleLabel.font = [UIFont systemFontOfSize:14];//btn字体size
    [btn setContentHorizontalAlignment:UIControlContentHorizontalAlignmentRight];
    [btn setTitle:@"忘记密码?" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    ///添加下划线
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"忘记密码?"];
    NSRange strRange = {0,[str length]};
    [str addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:strRange];
    [btn setAttributedTitle:str forState:UIControlStateNormal];//这个状态要加上
    
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    loginBtn.frame = CGRectMake(0, 400, self.view.frame.size.width, 50);
    loginBtn.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
    [loginBtn setTitle:@"登入" forState:UIControlStateNormal];
    [loginBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(clickLogin) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    registerBtn.frame = CGRectMake(0, 452, self.view.frame.size.width, 50);
    registerBtn.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
    [registerBtn setTitle:@"会员注册" forState:UIControlStateNormal];
    [registerBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    
    [self.view addSubview:phone];
    [self.view addSubview:pwd];
    [self.view addSubview:btn];
    [self.view addSubview:loginBtn];
    [self.view addSubview:registerBtn];
}

//登入按钮单击事件
- (void)clickLogin {
    
    NSLog(@"login...");
    MyTabBarControllerViewController *myTabBar = [[MyTabBarControllerViewController alloc] init];
    
    myTabBar.modalPresentationStyle = UIModalPresentationOverFullScreen;
    
    [self presentViewController:myTabBar animated:YES completion:nil];
    
    NSLog(@"ok");
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
