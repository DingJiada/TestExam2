//
//  MyAFNetworking2.m
//  TestExam2
//
//  Created by Dingjd on 25/09/2019.
//  Copyright © 2019 Dingjd. All rights reserved.
//

#import "MyAFNetworking2.h"

@implementation MyAFNetworking2

- (void)get
{
    // AFHTTPSessionManager内部包装了NSURLSession
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    
    NSDictionary *params = @{
                             @"username" : @"admin",
                             @"pwd" : @"123"
                             };
    // 设置请求参数为 JSON 格式
    mgr.requestSerializer = [AFJSONRequestSerializer serializer];
    // 设置响应序列化为二进制
    mgr.responseSerializer = [AFJSONResponseSerializer serializer];
    
    [mgr GET:@"http://www.baidu.com/login" parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"请求成功---%@", responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"请求失败---%@", error);
    }];
}

- (void)post {
    // AFHTTPSessionManager内部包装了NSURLSession
    AFHTTPSessionManager *mgr = [AFHTTPSessionManager manager];
    
    NSDictionary *params = @{
                             @"username" : @"123",
                             @"pwd" : @"123"
                             };
    
    [mgr POST:@"http://www.baidu.com/login" parameters:params success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"请求成功---%@", responseObject);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"请求失败---%@", error);
    }];
}

@end
