//
//  AFHTTPSessionManager+FollowAF4.m
//  AFNetworking
//
//  Created by 车德超 on 2020/8/23.
//

#import "AFHTTPSessionManager+FollowAF4.h"

@implementation AFHTTPSessionManager (FollowAF4)

- (nullable NSURLSessionDataTask *)GET:(NSString *)URLString
parameters:(nullable id)parameters
   headers:(nullable NSDictionary <NSString *, NSString *> *)headers
  progress:(nullable void (^)(NSProgress *downloadProgress))downloadProgress
   success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                               failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *error))failure {
    NSAssert(headers==nil, @"没有实现哟~");
    NSAssert(parameters==nil, @"没有实现哟~");
    return [self GET:URLString parameters:parameters success:success failure:failure];
}

- (nullable NSURLSessionDataTask *)POST:(NSString *)URLString
parameters:(nullable id)parameters
   headers:(nullable NSDictionary <NSString *, NSString *> *)headers
  progress:(nullable void (^)(NSProgress *uploadProgress))uploadProgress
   success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                                failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *error))failure {
    NSAssert(headers==nil, @"没有实现哟~");
    NSAssert(parameters==nil, @"没有实现哟~");
    return [self POST:URLString parameters:parameters success:success failure:failure];
}

- (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request
   uploadProgress:(nullable void (^)(NSProgress *uploadProgress)) uploadProgressBlock
 downloadProgress:(nullable void (^)(NSProgress *downloadProgress)) downloadProgressBlock
                            completionHandler:(nullable void (^)(NSURLResponse *response, id _Nullable responseObject,  NSError * _Nullable error))completionHandler {
    NSAssert(uploadProgressBlock==nil, @"没有实现哟~");
    NSAssert(downloadProgressBlock==nil, @"没有实现哟~");
    return [self dataTaskWithRequest:request completionHandler:completionHandler];
}

@end
