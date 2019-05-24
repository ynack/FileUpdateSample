//
//  AppDelegate.m
//  FileUpdateSample
//
//  Created by yosuke on 2019/05/24.
//  Copyright © 2019 yosuke.nakayama. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [_StopBtn setEnabled:false];    //起動時は処理をしていないので停止ボタンは無効
    [_InfoLog setStringValue:@""];  //情報ラベルを空欄に
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)Start:(id)sender {
}

@end
