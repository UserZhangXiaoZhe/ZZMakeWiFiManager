//
//  ZZMakeWiFiManager.h

//  Created by UserBaiZi on 2019/12/10.
//  Copyright © 2019 zz. All rights reserved.
//

/**
  在此代理方法中，修改下载的文件地址:
 -(void)processStartOfPartWithHeader:(MultipartMessageHeader*)header;
 在此代理方法中，获取下载的文件名称:
 -(void)processEndOfPartWithHeader:(MultipartMessageHeader*)header;
 
 注意：
 GCDAsyncSocket.h 和pod添加的冲突
 
 ZZMakeWiFiManager *vc = [[ZZMakeWiFiManager alloc] init];
 [self.navigationController pushViewController:vc animated:YES];
 
 */
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZZMakeWiFiManager : UIViewController

@end

NS_ASSUME_NONNULL_END
