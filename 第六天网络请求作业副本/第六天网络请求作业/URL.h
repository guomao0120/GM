//
//  URL.h
//  LessonNetworking
//
//  Created by wenze on 16/3/2.
//  Copyright © 2016年 wj. All rights reserved.
//

#ifndef URL_h
#define URL_h

//<key>NSAppTransportSecurity</key>
//<dict>
//<key>NSAllowsArbitraryLoads</key>
//<true/>
//</dict>

// 注：第二步中的参数解释如下：

//NSURLRequest初始化方法第一个参数：请求访问路径，第二个参数：缓存协议，第三个参数：网络请求超时时间（秒）
//其中缓存协议是个枚举类型包含：

//NSURLRequestUseProtocolCachePolicy//（基础策略）

//NSURLRequestReloadIgnoringLocalCacheData//（忽略本地缓存）

//NSURLRequestReturnCacheDataElseLoad//（首先使用缓存，如果没有本地缓存，才从原地址下载）

//NSURLRequestReturnCacheDataDontLoad//（使用本地缓存，从不下载，如果本地没有缓存，则请求失败，此策略多用于离线操作） www.2cto.com

//NSURLRequestReloadIgnoringLocalAndRemoteCacheData//（无视任何缓存策略，无论是本地的还是远程的，总是从原地址重新下载）

//NSURLRequestReloadRevalidatingCacheData//（如果本地缓存是有效的则不下载，其他任何情况都从原地址重新下载）


#define GETURL_T1 @"http://ipad-bjwb.bjd.com.cn/DigitalPublication/publish/Handler/APINewsList.ashx?date=20131129&startRecord=1&len=15&udid=1234567890&terminalType=Iphone&cid=213"

#define GETURL_T2 @"http://api.zbw.vc/api/vip/GetPhonePadTagMsg"

#define GETURL_B1 @"http://mobile.ximalaya.com/m/explore_album_list?category_name=all&condition=hot&device=android&page=1&per_page=20&status=0&tag_name=%E5%8D%81%E4%BA%8C%E6%98%9F%E5%BA%A7"

#define POSTURL_T1 @"http://ipad-bjwb.bjd.com.cn/DigitalPublication/publish/Handler/APINewsList.ashx"
#define POSTPARSE_T1 @"date=20131129&startRecord=1&len=5&udid=1234567890&terminalType=Iphone&cid=213"

#define POSTURL_B1 @"http://ipad-bjwb.bjd.com.cn/DigitalPublication/publish/Handler/APINewsList.ashx"
#define POSTPARSE_B1 @"date=20131129&startRecord=1&len=5&udid=1234567890&terminalType=Iphone&cid=213"

#endif /* URL_h */
