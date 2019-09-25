//
//  BlocMsgTableViewCell.m
//  TestExam2
//
//  Created by Dingjd on 24/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "BlocMsgTableViewCell.h"

@implementation BlocMsgTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self =  [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if(self){
        self.title = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 400, 30)];
        self.title.textColor = [UIColor whiteColor];
        self.title.font = [UIFont systemFontOfSize:18];
        self.title.textAlignment = NSTextAlignmentCenter;
        
        self.subTitle = [[UILabel alloc] initWithFrame:CGRectMake(0, 30, 400, 30)];
        self.subTitle.textColor = [UIColor whiteColor];
        self.subTitle.font = [UIFont systemFontOfSize:16];
        self.subTitle.textAlignment = NSTextAlignmentCenter;
        
        self.msgImgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 60, 450, 300)];
        
        self.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
        
        [self.contentView addSubview:self.title];
        [self.contentView addSubview:self.subTitle];
        [self.contentView addSubview:self.msgImgView];
        
    }
    
    return self;
}

-(void)setCells:(MsgCell *)msgCell {
    self.title.text = msgCell.title;
    self.subTitle.text = msgCell.subTitle;
    self.msgImgView.image = [UIImage imageNamed:msgCell.msgImgView];
    
}


- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
