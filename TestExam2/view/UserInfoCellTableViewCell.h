//
//  UserInfoCellTableViewCell.h
//  TestExam2
//
//  Created by Dingjd on 23/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../model/UserInfo.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserInfoCellTableViewCell : UITableViewCell

@property(nonatomic,strong) UILabel *type;

@property(nonatomic,strong) UILabel *val;

@property(nonatomic,strong) UILabel *remark;

@property(nonatomic,strong) UIImageView *imgView;

@property(nonatomic,strong) UIImageView *endImg;

-(void)setCells:(UserInfo *)userCell;

@end

NS_ASSUME_NONNULL_END
