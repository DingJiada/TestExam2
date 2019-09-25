//
//  UserInfoCellTableViewCell.m
//  TestExam2
//
//  Created by Dingjd on 23/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "UserInfoCellTableViewCell.h"

@implementation UserInfoCellTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self){
        self.type = [[UILabel alloc] initWithFrame:CGRectMake(50, 8, 400, 25)];
        self.type.textColor = [UIColor whiteColor];
        self.type.font = [UIFont systemFontOfSize:18];
        
        self.val = [[UILabel alloc] initWithFrame:CGRectMake(230, 8, 100, 25)];
        self.val.textColor = [UIColor whiteColor];
        self.val.font = [UIFont systemFontOfSize:18];
        self.val.textAlignment = NSTextAlignmentRight;
        
        self.remark = [[UILabel alloc] initWithFrame:CGRectMake(340, 8, 400, 25)];
        self.remark.textColor = [UIColor grayColor];
        self.remark.font = [UIFont systemFontOfSize:17];
        
        self.imgView = [[UIImageView alloc] initWithFrame:CGRectMake(20, 10, 20, 20)];
        self.endImg = [[UIImageView alloc] initWithFrame:CGRectMake(390, 10, 10, 15)];
        //self.endImg.contentMode = UIViewContentModeRight;//右中
        
        self.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
        
        [self.contentView addSubview:self.imgView];
        [self.contentView addSubview:self.type];
        [self.contentView addSubview:self.val];
        [self.contentView addSubview:self.remark];
        [self.contentView addSubview:self.endImg];
    }
    
    return self;
}

-(void)setCells:(UserInfo *)userCell {
    
    self.imgView.image = [UIImage imageNamed:userCell.headImg];
    
    self.type.text = userCell.type;
    
    if(userCell.val != nil){
        if([@"贷款（万）" isEqualToString:userCell.type]){
            self.val.textColor = [UIColor redColor];
        }
        self.val.text = userCell.val;
    }
    if(userCell.remark != nil)
        self.remark.text = userCell.remark;
    
    self.endImg.image = [UIImage imageNamed:@"endImg.png"];
}
//- (void)awakeFromNib {
//    [super awakeFromNib];
//    // Initialization code
//}
//
//- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
//
//    // Configure the view for the selected state
//}

@end
