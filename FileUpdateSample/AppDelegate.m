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

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    closeWindow = 0;
    [_StopBtn setEnabled:false];    //起動時は処理をしていないので停止ボタンは無効
    [_InfoLog setStringValue:@""];  //情報ラベルを空欄に
}


- (void)applicationWillTerminate:(NSNotification *)aNotification
{
    // Insert code here to tear down your application
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)sender
{
    return YES;
}

- (void)windowWillClose:(NSNotification *)aNotification
{
    if(closeWindow)
    {
        return;
    }
    else
    {
        closeWindow = 1;
    }
    [NSApp terminate:self];
}

- (IBAction)Start:(id)sender
{
    [_StopBtn setEnabled:true];
    [_StartBtn setEnabled:false];
}

- (IBAction)Stop:(id)sender
{
    [_StopBtn setEnabled:false];
    [_StartBtn setEnabled:true];
}
@end
