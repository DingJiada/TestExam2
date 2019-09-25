//
//  HomeViewController.m
//  TestExam2
//
//  Created by Dingjd on 20/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "HomeViewController.h"
#import "Person.h"
#import "../view/IdCardCell.h"
#import "AccountInfoViewController.h"

@interface HomeViewController ()<UITableViewDataSource,UITableViewDelegate>

@property(nonatomic,strong) UITableView *tableView;

@property(nonatomic,copy) NSArray *dataArr;

@end

@implementation HomeViewController
{
    IdCardCell *cell;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"选择户口";
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor colorWithRed:58.0/255 green:108.0/255 blue:145.0/255 alpha:1.0];
    //初始化tableView
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    NSLog(@"======tableView已初始化");
    
    self.tableView.backgroundColor = [UIColor colorWithRed:58.0/255 green:108.0/255 blue:145.0/255 alpha:1.0];
    
    Person *p1 = [[Person alloc] init];
    p1.account = @"TEST";
    p1.name1 = @"TEST(DD)";
    
    Person *p2 = [[Person alloc] init];
    p2.account = @"214";
    p2.name1 = @"预支码佣";
    
    Person *p3 = [[Person alloc] init];
    p3.account = @"TEST1";
    p3.name1 = @"TEST1";
    
    //获取要展示的数据
    self.dataArr = @[p1,p2,p3];
    NSLog(@"%@",self.dataArr);
    
    [self.tableView registerClass:[IdCardCell class] forCellReuseIdentifier:NSStringFromClass([Person class])];
    //绑定cell
    
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    NSLog(@"绑定代理");
    
    //UITabBarController * tabBar= [[UITabBarController alloc]init];
    //NSMutableArray * controllerArray = [[NSMutableArray alloc]init];
    
    self.tableView.tableFooterView = [UIView new];
    [self.view addSubview:self.tableView];
    
}

//获取每行要展示的数据
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    //cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([Person class]) forIndexPath:indexPath];
    Person * per = self.dataArr[indexPath.row];
    
    NSLog(@"%@",per);
    
    IdCardCell *cell2 = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([Person class]) forIndexPath:indexPath];
    
    [cell2 setIdCardCell:per];
    
    return cell2;
    
}

//获取要展示的行数
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArr.count;
}

//改变每行的高度方法
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 50;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    AccountInfoViewController *aVC = [AccountInfoViewController new];
    [self.navigationController pushViewController:aVC animated:YES];
    
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
