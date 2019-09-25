//
//  SysSetingTableViewCell.h
//  TestExam2
//
//  Created by Dingjd on 24/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MsgCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface SysSetingTableViewCell : UITableViewCell

@property(nonatomic,strong) UILabel *title;

@property(nonatomic,strong) UILabel *subTitle;

@property(nonatomic,strong) UIImageView *endImgView;

-(void)setCells:(MsgCell *)msgCell;
@end

NS_ASSUME_NONNULL_END
