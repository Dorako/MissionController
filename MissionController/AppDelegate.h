//
//  AppDelegate.h
//  MissionController
//
//  Created by Malthe Elkær on 1/30/13.
//  Copyright (c) 2013 Malthe Elkær. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
- (IBAction)buttonMiddle:(id)sender;
- (IBAction)buttonLeft:(id)sender;
- (IBAction)buttonRight:(id)sender;
@property (weak) IBOutlet NSTextField *myLabel;
- (IBAction)buttonSpotlight:(id)sender;
- (IBAction)buttonDown:(id)sender;

@end
