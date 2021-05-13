//
//  SysSetingViewController.m
//  TestExam2
//
//  Created by Dingjd on 23/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "SysSetingViewController.h"
#import "MsgCell.h"
#import "SysSetingTableViewCell.h"
#import "LoginViewController.h"

@interface SysSetingViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UITableView *tableView;

@property(nonatomic,strong) NSArray *dataArray;

@property(nonatomic,strong) UIButton *loginOutBtn;

@property(nonatomic,strong) UILabel *phoneInfo;

@property(nonatomic,strong) UIButton *privatePolicy;

@end

@implementation SysSetingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"系统设置";
    
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    MsgCell *c1 = [MsgCell new];
    c1.title = @"修改密码";
    MsgCell *c2 = [MsgCell new];
    c2.title = @"个人资料";
    MsgCell *c3 = [MsgCell new];
    c3.title = @"系统语言";
    c3.subTitle = @"简体中文";
    MsgCell *c4 = [MsgCell new];
    c4.title = @"关于我们";
    MsgCell *c5 = [MsgCell new];
    c5.title = @"版本";
    c5.subTitle = @"10.7";
    self.dataArray = @[c1,c2,c3,c4,c5];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 250) style:UITableViewStylePlain];//常规tableView
    self.tableView.backgroundColor = [UIColor colorWithRed:58.0/255 green:108.0/255 blue:145.0/255 alpha:1.0];
    
//    [self.tableView registerClass:[SysSetingTableViewCell class] forCellReuseIdentifier:NSStringFromClass([MsgCell class])];
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    
    self.loginOutBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    self.loginOutBtn.frame = CGRectMake(0 , 275, self.view.frame.size.width, 50);
    self.loginOutBtn.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
    [self.loginOutBtn setTitle:@"登出" forState:UIControlStateNormal];
    [self.loginOutBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [self.loginOutBtn addTarget:self action:@selector(loginOutClick) forControlEvents:UIControlEventTouchUpInside];
    
    self.phoneInfo = [[UILabel alloc] initWithFrame:CGRectMake(0 , 350, self.view.frame.size.width, 50)];
    self.phoneInfo.text = @"24小时客户服务热线\n+853 2888 2328";
    self.phoneInfo.numberOfLines = 0;//可以识别\n换行
    
    self.phoneInfo.textColor = [UIColor whiteColor];
    self.phoneInfo.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
    self.phoneInfo.textAlignment = NSTextAlignmentCenter;
    
    self.privatePolicy = [UIButton buttonWithType:UIButtonTypeCustom];
    self.privatePolicy.frame = CGRectMake(0, 680, self.view.frame.size.width, 40);
    [self.privatePolicy setTitle:@"隐私政策" forState:UIControlStateNormal];
    self.privatePolicy.titleLabel.font = [UIFont systemFontOfSize:14];
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:@"隐私政策"];
    NSRange strRange = {0,[str length]};
    [str addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithInteger:NSUnderlineStyleSingle] range:strRange];
    [self.privatePolicy setAttributedTitle:str forState:UIControlStateNormal];//这个状态要加上
    
    [self.view addSubview:self.loginOutBtn];
    [self.view addSubview:self.phoneInfo];
    [self.view addSubview:self.privatePolicy];
    // Do any additional setup after loading the view.
}

-(void)loginOutClick{
    
//    LoginViewController *loginVC = [[LoginViewController alloc] init];
//
//    [self presentViewController:loginVC animated:YES completion:nil];
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SysSetingTableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell==NULL) {
        cell=[[SysSetingTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    
//    SysSetingTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MsgCell class]) forIndexPath:indexPath];
    MsgCell *msgCell = self.dataArray[indexPath.row];
    
    [cell setCells:msgCell];
    
    return cell;
}

//获取要展示的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

//改变每行的高度方法
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
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
