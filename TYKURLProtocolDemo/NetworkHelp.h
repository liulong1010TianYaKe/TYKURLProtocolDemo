//
//  NetworkHelp.h
//  TYKURLProtocolDemo
//
//  Created by long on 1/21/16.
//  Copyright © 2016 long. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkHelp : NSObject

+ (void)request;

+ (void)request:(NSString *)method withUrlString:(NSString*)url;

+ (void)request:(NSString *)method withUrl:(NSString *)url withCompletionBlock:(void (^)(NSData *data,NSURLResponse *response, NSError *error)) completionBlock;

@end
