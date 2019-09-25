//
//  UserInfo.h
//  TestExam2
//
//  Created by Dingjd on 23/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface UserInfo : Person

@property(nonatomic,copy) NSString *type;

@property(nonatomic,copy) NSString *val;

@property(nonatomic,copy) NSString *remark;

@property(nonatomic,copy) NSString *headImg;

@end

NS_ASSUME_NONNULL_END
