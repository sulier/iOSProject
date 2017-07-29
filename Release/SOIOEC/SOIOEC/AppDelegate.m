//
//  AppDelegate.m
//  SOIOEC
//
//  Created by sulier_J on 2017/5/25.
//  Copyright © 2017年 sulier_J. All rights reserved.
//

#import "AppDelegate.h"
#import "GuideController.h"
#import "APPObject.h"
#import <JWLaunchAd/JWLaunchAd.h>
#import "AFNetworking.h"
#import "NetWorkManager.h"
#import "JQLabelInfo.h"
#import "PicInfo.h"
#import "MJExtension.h"
#import "ZLCTabBarController.h"
#import <UMSocialCore/UMSocialCore.h>
#import "SudokuViewController.h"
static NSString *QQ_Umeng_redirectUrl = @"http://mobile.umeng.com/social";
static NSString *Sina_Umeng_redirectUrl = @"https://sns.whalecloud.com/sina2/callback";
static NSString *Umeng_AppKey = @"5955c57882b6356a050017dc";
static NSString *QQ_AppID = @"1106257172";
static NSString *QQ_AppKey = @"VbGI4fUvvNKnpTZ5";
static NSString *Sina_AppID = @"4071289178";
static NSString *Sina_AppSecret = @"4d67d453b149200d2983576b1861daf2";
typedef int(^LauncheFinishedBlock)();


@interface AppDelegate ()

@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
//Umeng分享
    [[UMSocialManager defaultManager]openLog:YES];
    [[UMSocialManager defaultManager] setUmSocialAppkey:Umeng_AppKey];
    [self configUSharePlatforms];
    
    
//收藏文件夹创建
//    [self configDefaultFolders:@[@"壁纸",@"朋友圈配图",@"其他"]];
    if (![self configPasswordPage]) {
        [self configTabBarPage];
    }
    

//根控制器

    return YES;
}

-(void)configTabBarPage
{
//    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    ZLCTabBarController *tabBarController = [[ZLCTabBarController alloc] init];
    self.window.rootViewController = tabBarController;
    [self.window makeKeyAndVisible];
}

-(BOOL)configPasswordPage
{
    BOOL gestureExits = [[NSUserDefaults standardUserDefaults] boolForKey:kGesture];
    if (gestureExits) {
        SudokuViewController *vc = [[SudokuViewController alloc]init];
        vc.type = WTSudokuViewTypeVerity;
        vc.vertifyResults = ^(BOOL success) {
            if (success) {
                [self configTabBarPage];
            }
        };
        self.window.rootViewController = vc;
    }
    return gestureExits;
}


- (void)configUSharePlatforms
{
    /* 设置分享到QQ互联的appID
     * U-Share SDK为了兼容大部分平台命名，统一用appKey和appSecret进行参数设置，而QQ平台仅需将appID作为U-Share的appKey参数传进即可。
     */
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_QQ appKey:QQ_AppID appSecret:nil redirectURL:QQ_Umeng_redirectUrl];
    [[UMSocialManager defaultManager] setPlaform:UMSocialPlatformType_Sina appKey:Sina_AppID  appSecret:Sina_AppSecret redirectURL:Sina_Umeng_redirectUrl];
}


-(void)WZXGuideView
{
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIWindow        *window = delegate.window;
    window.rootViewController = [[GuideController alloc]init];
    [window makeKeyAndVisible];
}


-(void)WZXLaunchView
{
    NSString *imgUrlString =@"http://imgstore.cdn.sogou.com/app/a/100540002/714860.jpg";
    //  2.初始化启动页
    [JWLaunchAd initImageWithAttribute:4.0 showSkipType:SkipShowTypeAnimation setLaunchAd:^(JWLaunchAd *launchAd) {
        __block JWLaunchAd *weakSelf = launchAd;
        //如果选择 SkipShowTypeAnimation 需要设置动画跳过按钮的属性
        [weakSelf setAnimationSkipWithAttribute:[UIColor redColor] lineWidth:3.0 backgroundColor:nil textColor:nil];
        [launchAd setWebImageWithURL:imgUrlString options:JWWebImageDefault result:^(UIImage *image, NSURL *url) {
            //  异步缓冲图片完成后调整图片Frame
            weakSelf.launchAdViewFrame = CGRectMake(0, 0, [APPObject defaultApp].width, [APPObject defaultApp].height-100);
        } adClickBlock:^{
            //  3.广告回调
            NSString *url = @"https://www.baidu.com";
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString:url]];
        }];
    }];
}

- (BOOL)application:(UIApplication *)application handleOpenURL:(NSURL *)url
{
    BOOL result = [[UMSocialManager defaultManager] handleOpenURL:url];
    if (!result) {
        // 其他如支付等SDK的回调
    }
    return result;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    // Saves changes in the application's managed object context before the application terminates.
    [self saveContext];
}


#pragma mark - Core Data stack

@synthesize persistentContainer = _persistentContainer;

- (NSPersistentContainer *)persistentContainer {
    // The persistent container for the application. This implementation creates and returns a container, having loaded the store for the application to it.
    @synchronized (self) {
        if (_persistentContainer == nil) {
            _persistentContainer = [[NSPersistentContainer alloc] initWithName:@"SOIOEC"];
            [_persistentContainer loadPersistentStoresWithCompletionHandler:^(NSPersistentStoreDescription *storeDescription, NSError *error) {
                if (error != nil) {
                    // Replace this implementation with code to handle the error appropriately.
                    // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                    
                    /*
                     Typical reasons for an error here include:
                     * The parent directory does not exist, cannot be created, or disallows writing.
                     * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                     * The device is out of space.
                     * The store could not be migrated to the current model version.
                     Check the error message to determine what the actual problem was.
                    */
                    NSLog(@"Unresolved error %@, %@", error, error.userInfo);
                    abort();
                }
            }];
        }
    }
    
    return _persistentContainer;
}

#pragma mark - Core Data Saving support

- (void)saveContext {
    NSManagedObjectContext *context = self.persistentContainer.viewContext;
    NSError *error = nil;
    if ([context hasChanges] && ![context save:&error]) {
        // Replace this implementation with code to handle the error appropriately.
        // abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
        NSLog(@"Unresolved error %@, %@", error, error.userInfo);
        abort();
    }
}

@end
