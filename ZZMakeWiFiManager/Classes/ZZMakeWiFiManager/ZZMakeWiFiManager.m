//
//  ZZMakeWiFiManager.m

//  Created by  on 2019/12/10.
//  Copyright © 2019 . All rights reserved.
//

#import "ZZMakeWiFiManager.h"
#import "HTTPServer.h"
#import "DDLog.h"
#import "DDTTYLogger.h"
#import "MyHTTPConnection.h"
#import "DHIPAdress.h"

#import "ZZMakeWiFiMacro.h"
#import "UIView+ZZWiFiView.h"

@interface ZZMakeWiFiManager (){
    HTTPServer *httpServer;
}

@property(nonatomic, strong) NSArray *dataArr;

/// 上层
@property (nonatomic,strong)UIView *topToolView;
@property (nonatomic,strong)UILabel *titleLabel;
@property (nonatomic,strong)UILabel *portLabel;
/// 下层
@property (nonatomic,strong)UIView *bottomToolView;
@property (nonatomic,strong)UIImageView *wifiIcon;
@property (nonatomic,strong)UILabel *tipsLabel;
/// 上下层是否显示
@property (nonatomic,assign)BOOL isHiddenView;
@end

@implementation ZZMakeWiFiManager

#pragma mark - Life Cycle
- (void)viewDidLoad{
    [super viewDidLoad];
    
    [self setupNavgationItem];
    [self setupSubview];
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    //设置导航栏背景图片为一个空的image，这样就透明了
    [self.navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
    
    //去掉透明后导航栏下边的黑边
    [self.navigationController.navigationBar setShadowImage:[[UIImage alloc] init]];
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    //    如果不想让其他页面的导航栏变为透明 需要重置
    [self.navigationController.navigationBar setBackgroundImage:nil forBarMetrics:UIBarMetricsDefault];
    [self.navigationController.navigationBar setShadowImage:nil];
    
    [httpServer stop];
}

- (void)dealloc{
    
    
    
#ifdef DEBUG
    NSLog(@"%s",__func__);
#endif
}

#pragma mark - Private method
-(void)setupNavgationItem{
    
}
-(void)setupSubview{
    self.view.backgroundColor = [UIColor orangeColor];
    self.title = @"WiFI传输";
    
    [self.view addSubview:self.topToolView];
    [self.topToolView addSubview:self.titleLabel];
    [self.topToolView addSubview:self.portLabel];
        
    [self.view addSubview:self.bottomToolView];
    [self.bottomToolView addSubview:self.wifiIcon];
    [self.bottomToolView addSubview:self.tipsLabel];
    
    [self.view bringSubviewToFront:self.topToolView];
    
    [self openHttpServer];
}

- (void)openHttpServer{
    
    httpServer = [[HTTPServer alloc] init];
    [httpServer setType:@"_http._tcp."];
    // webPath是server搜寻HTML等文件的路径
    NSString *webPath = [[NSBundle mainBundle] resourcePath];
    [httpServer setDocumentRoot:webPath];
    [httpServer setConnectionClass:[MyHTTPConnection class]];
    NSError *err;
    NSString *IPAdress = [DHIPAdress deviceIPAdress];
    
    if ([httpServer start:&err] && [httpServer isRunning]) {
        NSLog(@"http://%@:%hu",IPAdress,[httpServer listeningPort]);
    }else{
        NSLog(@"%@",err);
    }
    
    NSString *uploadDirPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSLog(@"文件地址：%@",uploadDirPath);
    
    NSString *str = [NSString stringWithFormat:@"http://%@:%hu",IPAdress,[httpServer listeningPort]];
    self.portLabel.text = str;
}


#pragma mark - Public Method


#pragma mark - Event Response

#pragma mark - Delegate


#pragma mark - Override

#pragma mark - Getters and Setters
-(UIView *)topToolView{
    if (!_topToolView) {
        _topToolView = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height *0.2, ZZMakeWiFi_SCREEN_W * 0.9, self.view.frame.size.height *0.2)];
        _topToolView.backgroundColor = [UIColor whiteColor];
        _topToolView.centerX = self.view.centerX;
        
        //设置阴影
        _topToolView.layer.shadowColor =[UIColor blackColor].CGColor;
        _topToolView.layer.shadowOpacity = 0.3;
        _topToolView.layer.shadowRadius = 10;
        _topToolView.layer.shadowOffset =CGSizeMake(2, 2);
        
    }
    return _topToolView;
}
-(UILabel *)titleLabel{
  if (!_titleLabel) {
      _titleLabel = [[UILabel alloc] init];
      _titleLabel.frame = CGRectMake(0, ZZMakeWiFi_STATUS_BAR_HEIGHT, self.topToolView.width , 44);
      _titleLabel.text = @"在电脑浏览器中访问以下地址";
      _titleLabel.font = [UIFont systemFontOfSize:15];
      _titleLabel.textColor = UIColor.orangeColor;
      _titleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _titleLabel;
}
-(UILabel *)portLabel{
  if (!_portLabel) {
      _portLabel = [[UILabel alloc] init];
      _portLabel.frame = CGRectMake(0, self.titleLabel.bottom, self.topToolView.frame.size.width, 44);
      _portLabel.text = @"Http://192.168.12.118:8080";
      _portLabel.font = [UIFont systemFontOfSize:18];
      _portLabel.textColor = UIColor.orangeColor;
      _portLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _portLabel;
}

-(UIView *)bottomToolView{
    if (!_bottomToolView) {
        _bottomToolView = [[UIView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height *0.3, ZZMakeWiFi_SCREEN_W, self.view.frame.size.height *0.7)];
        _bottomToolView.backgroundColor = [UIColor whiteColor];
    }
    return _bottomToolView;
}
-(UIImageView *)wifiIcon{
    if (!_wifiIcon) {
        _wifiIcon = [[UIImageView alloc] init];
        _wifiIcon.frame = CGRectMake(0, self.view.frame.size.height *0.2, self.bottomToolView.width*0.3, self.bottomToolView.width*0.2);
        _wifiIcon.centerX = self.bottomToolView.centerX;
        _wifiIcon.image = [UIImage imageNamed:@"icon_wifi"];
    }
    return _wifiIcon;
}

-(UILabel *)tipsLabel{
  if (!_tipsLabel) {
      _tipsLabel = [[UILabel alloc] init];
      _tipsLabel.frame = CGRectMake(60, self.wifiIcon.bottom + 10, self.bottomToolView.frame.size.width*0.7, 84);
      _tipsLabel.centerX = self.bottomToolView.centerX;
      _tipsLabel.text = @"请确保您的手机和电脑在同一局域网内，传输过程中请勿关闭此页面。";
      _tipsLabel.font = [UIFont systemFontOfSize:14];
      _tipsLabel.textColor = UIColor.grayColor;
      _tipsLabel.textAlignment = NSTextAlignmentCenter;
      _tipsLabel.numberOfLines = 0;
    }
    return _tipsLabel;
}
@end
