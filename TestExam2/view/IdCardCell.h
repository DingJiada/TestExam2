//
//  IdCardCell.h
//  TestExam2
//
//  Created by Dingjd on 20/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "../model/Person.h"

@interface IdCardCell : UITableViewCell

@property(nonatomic,strong) UILabel *account;//户口
@property(nonatomic,strong) UILabel *name;//姓名
@property(nonatomic,strong) UIImageView *imgView;
@property(nonatomic,strong) UIImageView *endImg;

-(void)setIdCardCell:(Person *) person;

@end

