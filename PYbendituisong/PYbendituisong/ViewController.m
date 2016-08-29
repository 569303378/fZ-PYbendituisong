//
//  ViewController.m
//  PYbendituisong
//
//  Created by Apple on 16/8/2.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

}
- (IBAction)button:(UIButton *)sender {
    // 1.创建一个本地通知
    UILocalNotification *localNote = [[UILocalNotification alloc] init];
    
    // 1.1.设置通知发出的时间
    localNote.fireDate = [NSDate dateWithTimeIntervalSinceNow:5];//五秒后通知
    
    // 1.2.设置通知内容
    localNote.alertBody = @"这是一个推送这是一个推送";
    
    // 1.3.设置锁屏时,字体下方显示的一个文字
    localNote.alertAction = @"赶紧!!!!!";
    localNote.hasAction = YES;
    
    // 1.4.设置启动图片(通过通知打开的)
    localNote.alertLaunchImage = @"11";
    
    // 1.5.设置通过到来的声音
    localNote.soundName = UILocalNotificationDefaultSoundName;
    
    // 1.6.设置应用图标左上角显示的数字
    localNote.applicationIconBadgeNumber = 999;
    
    // 1.7.设置一些额外的信息
    localNote.userInfo = @{@"qq" : @"704711253", @"msg" : @"success"};
    
    // 2.执行通知
    [[UIApplication sharedApplication] scheduleLocalNotification:localNote];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
