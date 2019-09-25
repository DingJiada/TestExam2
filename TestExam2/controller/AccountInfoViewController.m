//
//  AccountInfoViewController.m
//  TestExam2
//
//  Created by Dingjd on 22/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "AccountInfoViewController.h"
#import "../model/UserInfo.h"
#import "../view/UserInfoCellTableViewCell.h"

@interface AccountInfoViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UITableView *tableView;

@property(nonatomic,copy) NSArray *dataArr;

@end

@implementation AccountInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title=@"TEST(DD)";
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor colorWithRed:58.0/255 green:108.0/255 blue:145.0/255 alpha:1.0];
    
    UserInfo *u1 = [UserInfo new];
    u1.headImg = @"31.png";
    u1.type = @"会员级别";
    u1.val = @"Platinum";
    //u1.remark = @"";
    
    UserInfo *u2 = [UserInfo new];
    u2.headImg = @"32.png";
    u2.type = @"存款（万）";
    u2.val = @"143.6569";
    u2.remark = @"明细";
    UserInfo *u3 = [UserInfo new];
    u3.headImg = @"33.png";
    u3.type = @"贷款（万）";
    u3.val = @"11.0011";
    u3.remark = @"明细";
    UserInfo *u4 = [UserInfo new];
    u4.headImg = @"34.png";
    u4.type = @"代卖（万）";
    u4.val = @"0";
    u4.remark = @"明细";
    UserInfo *u5 = [UserInfo new];
    u5.headImg = @"35.png";
    u5.type = @"转码（万）";
    u5.val = @"0";
    u5.remark = @"明细";
    UserInfo *u6 = [UserInfo new];
    u6.headImg = @"36.png";
    u6.type = @"上下数（万）";
    u6.val = @"0";
    u6.remark = @"明细";
    UserInfo *u7 = [UserInfo new];
    u7.headImg = @"37.png";
    u7.type = @"佣金津贴明细";
    //u7.val = @"";
    u7.remark = @"明细";
    UserInfo *u8 = [UserInfo new];
    u8.headImg = @"38.png";
    u8.type = @"下线管理";
    //u8.val = @"";
    u8.remark = @"明细";
    self.dataArr = @[u1,u2,u3,u4,u5,u6,u7,u8];
    
    [self.tableView registerClass:[UserInfoCellTableViewCell class] forCellReuseIdentifier:NSStringFromClass([UserInfo class])];
    //绑定cell
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    NSLog(@"绑定代理");
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    // Do any additional setup after loading the view.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([Person class]) forIndexPath:indexPath];
    UserInfo *userInfo = self.dataArr[indexPath.row];
    
    NSLog(@"%@",userInfo);
    
    UserInfoCellTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UserInfo class]) forIndexPath:indexPath];
    
    [cell setCells:userInfo];
    
    return cell;
}

//获取要展示的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

//改变每行的高度方法
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 40;
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
