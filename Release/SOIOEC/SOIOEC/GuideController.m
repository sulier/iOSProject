//
//  GuideController.m
//  SOIOEC
//
//  Created by sulier_J on 2014/4/18.
//  Copyright © 2014年 sulier_J. All rights reserved.
//

#import "GuideController.h"
#import <Cordova/CDV.h>

@interface GuideController ()

@end

@implementation GuideController

- (void)viewDidLoad {
    
    CDVViewController *webviewcontroller=[[CDVViewController alloc]init];
    webviewcontroller.wwwFolderName= @"www/mobileWidgets";
    webviewcontroller.startPage = @"index.html";
    [self addChildViewController:webviewcontroller];
    [webviewcontroller didMoveToParentViewController:self];
    webviewcontroller.view.frame = self.view.bounds;
    webviewcontroller.webView.scrollView.scrollEnabled = NO;
    [self.view addSubview:webviewcontroller.view];
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
