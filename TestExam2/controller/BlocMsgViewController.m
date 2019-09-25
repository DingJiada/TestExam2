//
//  BlocMsgViewController.m
//  TestExam2
//
//  Created by Dingjd on 24/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "BlocMsgViewController.h"
#import "MsgCell.h"
#import "BlocMsgTableViewCell.h"

@interface BlocMsgViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UITableView *tableView;

@property(nonatomic,strong) NSArray *dataArray;

@end

@implementation BlocMsgViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"集团资讯";
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    self.tableView.backgroundColor = [UIColor colorWithRed:58.0/255 green:108.0/255 blue:145.0/255 alpha:1.0];
    MsgCell *c1 = [MsgCell new];
    c1.title = @"济州蓝鼎大街会";
    c1.subTitle = @"韩国济州西西浦市安德面神话历史路蓝鼎娱乐场";
    c1.msgImgView = @"xiaoyu.jpg";
    
    MsgCell *c2 = [MsgCell new];
    c2.title = @"济州蓝鼎大街会";
    c2.subTitle = @"韩国济州西西浦市安德面神话历史路蓝鼎娱乐场";
    c2.msgImgView = @"xiaoyu.jpg";
    
    self.dataArray = @[c1,c2,c1,c2];
    
    [self.tableView registerClass:[BlocMsgTableViewCell class] forCellReuseIdentifier:NSStringFromClass([MsgCell class])];
    //绑定cell
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    NSLog(@"绑定代理");
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    
    // Do any additional setup after loading the view.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    MsgCell *msgCell = self.dataArray[indexPath.row];
    
    BlocMsgTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([MsgCell class]) forIndexPath:indexPath];
    
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
    return 380;
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
