//
//  SysSetingTableViewCell.m
//  TestExam2
//
//  Created by Dingjd on 24/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "SysSetingTableViewCell.h"

@implementation SysSetingTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.backgroundColor = [UIColor colorWithRed:51.0/255 green:85.0/255 blue:106.0/255 alpha:1.0];
        
        self.title = [[UILabel alloc] initWithFrame:CGRectMake(20, 15, 300, 20)];
        self.title.textColor = [UIColor whiteColor];
        
        self.subTitle = [[UILabel alloc] initWithFrame:CGRectMake(300, 15, 80, 20)];
        self.subTitle.textColor = [UIColor grayColor];
        self.subTitle.textAlignment = NSTextAlignmentRight;
        
        self.endImgView = [[UIImageView alloc] initWithFrame:CGRectMake(390, 18, 10, 15)];
        
        [self.contentView addSubview:self.title];
        [self.contentView addSubview:self.subTitle];
        [self.contentView addSubview:self.endImgView];
    }
    
    return self;
}



- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
-(void)setCells:(MsgCell *)msgCell {
    
    self.title.text = msgCell.title;
    
    if(msgCell.subTitle != nil){
        self.subTitle.text = msgCell.subTitle;
    }
    
    self.endImgView.image = [UIImage imageNamed:@"endImg.png"];
    
}

@end
