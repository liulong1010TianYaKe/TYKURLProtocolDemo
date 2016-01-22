//
//  NetworkHelp.m
//  TYKURLProtocolDemo
//
//  Created by long on 1/21/16.
//  Copyright © 2016 long. All rights reserved.
//

#import "NetworkHelp.h"


@implementation NetworkHelp


+ (void)request{
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://baidu.com"]];
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"just wait for 5 seconds!");
        sleep(5);
        NSL/Users/long/Desktop/项目/TYKURLProtocolDemo/TYKURLProtocolDemo/NetworkHelp.hog(@"%@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
        
    }];
    
    [task resume];
}


+ (void)request:(NSString *)method withUrlString:(NSString *)url{
    NSURLSession *session = [NSURLSession sharedSession];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:url]];
    request.HTTPMethod = method;
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"just wait for 5 seconds!");
        sleep(5);
        NSLog(@"%@",[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding]);
    }];
    
    [task resume];
    
}

+ (void)request:(NSString *)method withUrl:(NSString *)url withCompletionBlock:(void (^)(NSData *, NSURLResponse *, NSError *))completionBlock{
    
}
@end
