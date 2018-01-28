//
//  ViewController.m
//  FMMapKit_inroad
//
//  Created by roadPro on 2018/1/28.
//  Copyright © 2018年 SQLlitedemo. All rights reserved.
//

#import "ViewController.h"
#import "FMMapKit.h"

@interface ViewController ()<FMKMapViewDelegate>
{
    FMKMapView *_mapView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 离线地图加载
//    NSString *dataPath = [[NSBundle mainBundle] pathForResource:@"10347" ofType:@"fmap"];
//    _mapView = [[FMKMapView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64) path:dataPath delegate:self];
//    [self.view addSubview:_mapView];
    
    // 在线地图加载
    _mapView = [[FMKMapView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-64) ID:@"f200203" delegate:self autoUpgrade:YES];
    [self.view addSubview:_mapView];
    
    // 离线主题加载
    // 地图主题如果不设置，则SDK默认加载FMBundle.bundle中名称为2001的主题数据。
    //    [_mapView setThemeWithLocalPath:[FMBUNDLE pathForResource:@"2001.theme" ofType:nil]];
    //    NSString *themePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent:@"3007/3007.theme"];
    //    [_mapView setThemeWithLocalPath:themePath];
    
    // 在线主题加载
    [_mapView setThemeWithID:@"2001"];
}
#pragma mark - FMKMapViewDelegate
/*!
 @brief 地图加载完成
 @param mapview 地图View对象
 */
- (void)mapViewDidFinishLoadingMap:(FMKMapView *)mapView {
    NSLog(@"地图加载完成");
}
/*!
 @brief 地图加载失败
 @param mapView 地图View
 @param error 错误信息
 */
- (void)mapViewDidFailLoadingMap:(FMKMapView *)mapView withError:(NSError *)error {
    NSLog(@"地图加载失败-%@", error);
}


@end
