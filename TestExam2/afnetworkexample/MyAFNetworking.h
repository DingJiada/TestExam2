//
//  MyAFNetworking.h
//  TestExam2
//
//  Created by Dingjd on 25/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyAFNetworking : NSObject

@property (assign,nonatomic,readonly) AFNetworkReachabilityStatus reachAbility;


//session作为请求头的post请求(有网络请求错误提示)
-(void)sessionRequestPostMethodHeader:(NSString *)header port:(NSString *)port parameters:(NSDictionary *)parameters result:(void (^)(NSDictionary *reobject,NSInteger errcode,NSString *msg)) result;

//session作为请求头的GET请求
-(void)sessionRequestGetMethodHeader:(NSString *)header port:(NSString *)port parameters:(NSDictionary *)parameters result:(void (^)(NSDictionary *reobject,NSInteger errcode,NSString *msg)) result;

+(MyAFNetworking *)getNetWorkingUtil;

@end

NS_ASSUME_NONNULL_END
