//
//  AFHTTPSessionManager+FollowAF4.h
//  AFNetworking
//
//  Created by 车德超 on 2020/8/23.
//

#import "AFHTTPSessionManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface AFHTTPSessionManager (FollowAF4)
- (nullable NSURLSessionDataTask *)GET:(NSString *)URLString
parameters:(nullable id)parameters
   headers:(nullable NSDictionary <NSString *, NSString *> *)headers
  progress:(nullable void (^)(NSProgress *downloadProgress))downloadProgress
   success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                               failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *error))failure;

- (nullable NSURLSessionDataTask *)POST:(NSString *)URLString
parameters:(nullable id)parameters
   headers:(nullable NSDictionary <NSString *, NSString *> *)headers
  progress:(nullable void (^)(NSProgress *uploadProgress))uploadProgress
   success:(nullable void (^)(NSURLSessionDataTask *task, id _Nullable responseObject))success
                                failure:(nullable void (^)(NSURLSessionDataTask * _Nullable task, NSError *error))failure;

- (NSURLSessionDataTask *)dataTaskWithRequest:(NSURLRequest *)request
  uploadProgress:(nullable void (^)(NSProgress *uploadProgress)) uploadProgressBlock
downloadProgress:(nullable void (^)(NSProgress *downloadProgress)) downloadProgressBlock
                            completionHandler:(nullable void (^)(NSURLResponse *response, id _Nullable responseObject,  NSError * _Nullable error))completionHandler;
@end

NS_ASSUME_NONNULL_END
