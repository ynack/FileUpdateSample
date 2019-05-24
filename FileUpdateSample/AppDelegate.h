//
//  AppDelegate.h
//  FileUpdateSample
//
//  Created by yosuke on 2019/05/24.
//  Copyright © 2019 yosuke.nakayama. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *SelectPath;

@property (weak) IBOutlet NSButton *StartBtn;
@property (weak) IBOutlet NSButton *StopBtn;

@property (weak) IBOutlet NSTextField *InfoLog;

@end

