//
//  ViewController.m
//  TYKURLProtocolDemo
//
//  Created by long on 1/21/16.
//  Copyright © 2016 long. All rights reserved.
//

#import "ViewController.h"
#import "NetworkHelp.h"

#define Html5 @"http://img2.kuwo.cn/star/userpl2015/shoujigd/random/1967_auto_150.jpg"
#define Html51 @"http://www.hzins.com"
#define Html5Baidu  @"http://baidu.com"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)btnRequestTouchInside:(id)sender {
    
   // 使用 NSURLSession 请求网络
//    [self testNSURLSession];
    
//    [NetworkHelp request];
    
    [NetworkHelp request:@"GET" withUrlString:@"http://baidu.com"];
    
}

/*
   NSURLSession 采用的是 “异步阻塞” 模型，即所有请求在发出后都进入 2# 线程执行，在 2# 线程内部按照阻塞队列模式执行。初步判断，此阻塞特性为 NSURLSession.sharedSession() 单例模式的结果
 
 */
- (void)testNSURLSession{
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLRequest  *request = [NSURLRequest requestWithURL:[NSURL URLWithString:Html5Baidu]];
    
    NSURLSessionTask *task = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        dispatch_async(dispatch_get_main_queue(), ^{
            self.imgView.image = [UIImage imageWithData:data];
        });
        NSLog(@"等待5s!");
        sleep(5);
        NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",string);
    }];
    
    [task resume];
    
}
@end
