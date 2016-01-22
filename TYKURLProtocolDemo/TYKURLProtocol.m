//
//  TYKURLProtocol.m
//  TYKURLProtocolDemo
//
//  Created by long on 1/21/16.
//  Copyright © 2016 long. All rights reserved.
//

#import "TYKURLProtocol.h"

@implementation TYKURLProtocol

+ (BOOL)canInitWithTask:(NSURLSessionTask *)task{
    return YES;
}

+ (BOOL)canInitWithRequest:(NSURLRequest *)request{
    return YES;
}

- (instancetype)initWithRequest:(NSURLRequest *)request cachedResponse:(NSCachedURLResponse *)cachedResponse client:(id<NSURLProtocolClient>)client{
    return [super initWithRequest:request cachedResponse:cachedResponse client:client];
}

- (instancetype)initWithTask:(NSURLSessionTask *)task cachedResponse:(NSCachedURLResponse *)cachedResponse client:(id<NSURLProtocolClient>)client{
    return [super initWithTask:task cachedResponse:cachedResponse client:client];
}

+ (NSURLRequest *)canonicalRequestForRequest:(NSURLRequest *)request{
    return request;
}

// 实现请求开始
- (void)startLoading{
    
}

// 实现请求结束
- (void)stopLoading{
    
}
//
//+ (nullable id)propertyForKey:(NSString *)key inRequest:(NSURLRequest *)request{
//    
//}
//
///*!
// @method setProperty:forKey:inRequest:
// @abstract Stores the given property in the given request using the
// given key.
// @discussion The purpose of this method is to provide an interface
// for protocol implementors to customize protocol-specific
// information associated with NSMutableURLRequest objects.
// @param value The property to store.
// @param key The string to use for the property storage.
// @param request The request in which to store the property.
// */
//+ (void)setProperty:(id)value forKey:(NSString *)key inRequest:(NSMutableURLRequest *)request;
//
///*!
// @method removePropertyForKey:inRequest:
// @abstract Remove any property stored under the given key
// @discussion Like setProperty:forKey:inRequest: above, the purpose of this
// method is to give protocol implementors the ability to store
// protocol-specific information in an NSURLRequest
// @param key The key whose value should be removed
// @param request The request to be modified
// */
//+ (void)removePropertyForKey:(NSString *)key inRequest:(NSMutableURLRequest *)request;



@end
