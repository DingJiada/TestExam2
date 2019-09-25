//
//  IdCardCell.m
//  TestExam2
//
//  Created by Dingjd on 20/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "IdCardCell.h"
@interface IdCardCell()

@end

@implementation IdCardCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self)
    {
        //要在此处初始化组件，可以使用自动布局（autolayout）。
        self.account = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 300, 25)];
        self.account.textColor = [UIColor whiteColor];
        self.account.font = [UIFont systemFontOfSize:16];
        
        self.name = [[UILabel alloc] initWithFrame:CGRectMake(20, 23, 300, 25)];
        self.name.textColor = [UIColor whiteColor];
        self.name.font = [UIFont systemFontOfSize:16];
        
        self.endImg = [[UIImageView alloc] initWithFrame:CGRectMake(390, 18, 10, 15)];
        
        self.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
        [self.contentView addSubview:self.account];
        [self.contentView addSubview:self.name];
        [self.contentView addSubview:self.endImg];
    }
    
    return self;
}

-(void)setIdCardCell:(Person *) person {
    //为组件赋值
    NSLog(@"为组件赋值");
    self.account.text = [NSString stringWithFormat:@"户口 %@",person.account];
    self.name.text = [NSString stringWithFormat:@"姓名 %@",person.name1];
    self.endImg.image = [UIImage imageNamed:@"endImg.png"];
    NSLog(@"组件赋值完毕！");
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
