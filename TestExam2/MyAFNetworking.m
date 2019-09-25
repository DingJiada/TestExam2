//
//  MyAFNetworking.m
//  TestExam2
//
//  Created by Dingjd on 25/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "MyAFNetworking.h"

@interface MyAFNetworking()

@property(nonatomic,retain) NSMutableArray *connectFailArr;

@end

static MyAFNetworking *instance = nil;

static int netWorkState;

@implementation MyAFNetworking

+ (id)allocWithZone:(NSZone *)zone {
    return [self getNetWorkingUtil];
}
- (id)copyWithZone:(NSZone *)zone {
    return self;
}
-(id)init {
    if (instance) {
        return instance;
    }
    self = [super init];
    return self;
}

+(MyAFNetworking *)getNetWorkingUtil {
    
    if (!instance) {
        instance = [[super allocWithZone:NULL] init];
        instance.connectFailArr = [[NSMutableArray alloc]initWithCapacity:3];
        [instance chectReachAbility];
    }

    return instance;
}

/**
 AFNetworkReachabilityStatusUnknown = -1, // 未知
 AFNetworkReachabilityStatusNotReachable = 0, // 无连接
 AFNetworkReachabilityStatusReachableViaWWAN = 1, // 3G 花钱
 AFNetworkReachabilityStatusReachableViaWiFi = 2, // 局域网络,不花钱
 */
-(void)chectReachAbility {
    // 检测网络连接的单例,网络变化时的回调方法
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        
        self->_reachAbility = status;
        
        NSLog(@"%d",netWorkState);
    }];
    
    // 如果要检测网络状态的变化,必须用检测管理器的单例的startMonitoring
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];

}
@end
