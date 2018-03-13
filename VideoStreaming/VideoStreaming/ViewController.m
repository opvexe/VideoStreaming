//
//  ViewController.m
//  VideoStreaming
//
//  Created by Facebook on 2018/3/13.
//  Copyright © 2018年 Facebook. All rights reserved.
//

#import "ViewController.h"
#import "NRScreenVideoCamera.h"

@interface ViewController ()<ZFScreenVideoCameraDelegate>
@property(nonatomic,strong) NRScreenVideoCamera *cameraView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(100, 200, 100, 40);
    [btn setTitle:@"Sart" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(Start) forControlEvents:UIControlEventTouchUpInside];
    
}

-(NRScreenVideoCamera *)cameraView{
    if (!_cameraView) {
        _cameraView = [[NRScreenVideoCamera alloc]initWithView:self.view inRect:[UIScreen mainScreen].bounds];
        _cameraView.delegate = self;
    }
    return _cameraView;
}

-(void)Start{
    [self.cameraView startScreenCapture];
}

- (void)willOutputScreenSampleBuffer:(CMSampleBufferRef)sampleBuffer{
    
    NSLog(@"%@",sampleBuffer);
}




@end
