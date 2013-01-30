//
//  AppDelegate.m
//  MissionController
//
//  Created by Malthe Elkær on 1/30/13.
//  Copyright (c) 2013 Malthe Elkær. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)buttonMiddle:(id)sender {
    //ctrl = 59, alt = 58, cmd = 55, up = 126, down = 125, right = 124, left = 123, spc =49
    _myLabel.stringValue = @"Mission Control";
    CGEventSourceRef src =
    CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    
    CGEventRef ctrld = CGEventCreateKeyboardEvent(src, (CGKeyCode)59, true);
    CGEventRef ctrlu = CGEventCreateKeyboardEvent(src, (CGKeyCode)59, false);
    CGEventRef akud = CGEventCreateKeyboardEvent(src, (CGKeyCode)126, true);
    CGEventRef akuu = CGEventCreateKeyboardEvent(src, (CGKeyCode)126, false);
    
    CGEventSetFlags(akud, kCGEventFlagMaskControl);
    CGEventSetFlags(akuu, kCGEventFlagMaskControl);
    
    CGEventTapLocation loc = kCGHIDEventTap; // kCGSessionEventTap also works
    CGEventPost(loc, ctrld);
    CGEventPost(loc, akud);
    CGEventPost(loc, ctrlu);
    CGEventPost(loc, akuu);
    
    CFRelease(ctrld);
    CFRelease(ctrlu);
    CFRelease(akud);
    CFRelease(akuu);
    CFRelease(src);
}

- (IBAction)buttonLeft:(id)sender {
    _myLabel.stringValue = @"Left";
    CGEventSourceRef src =
    CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    
    CGEventRef ctrld = CGEventCreateKeyboardEvent(src, (CGKeyCode)59, true);
    CGEventRef ctrlu = CGEventCreateKeyboardEvent(src, (CGKeyCode)59, false);
    CGEventRef akld = CGEventCreateKeyboardEvent(src, (CGKeyCode)123, true);
    CGEventRef aklu = CGEventCreateKeyboardEvent(src, (CGKeyCode)12, false);
    
    CGEventSetFlags(akld, kCGEventFlagMaskControl);
    CGEventSetFlags(aklu, kCGEventFlagMaskControl);
    
    CGEventTapLocation loc = kCGHIDEventTap; // kCGSessionEventTap also works
    CGEventPost(loc, ctrld);
    CGEventPost(loc, akld);
    CGEventPost(loc, ctrlu);
    CGEventPost(loc, aklu);
    
    CFRelease(ctrld);
    CFRelease(ctrlu);
    CFRelease(akld);
    CFRelease(aklu);
    CFRelease(src);
}

- (IBAction)buttonRight:(id)sender {
    _myLabel.stringValue = @"Right";
    CGEventSourceRef src =
    CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    
    CGEventRef ctrld = CGEventCreateKeyboardEvent(src, (CGKeyCode)59, true);
    CGEventRef ctrlu = CGEventCreateKeyboardEvent(src, (CGKeyCode)59, false);
    CGEventRef akrd = CGEventCreateKeyboardEvent(src, (CGKeyCode)124, true);
    CGEventRef akru = CGEventCreateKeyboardEvent(src, (CGKeyCode)124, false);
    
    CGEventSetFlags(akrd, kCGEventFlagMaskControl);
    CGEventSetFlags(akru, kCGEventFlagMaskControl);
    
    CGEventTapLocation loc = kCGHIDEventTap; // kCGSessionEventTap also works
    CGEventPost(loc, ctrld);
    CGEventPost(loc, akrd);
    CGEventPost(loc, ctrlu);
    CGEventPost(loc, akru);
    
    CFRelease(ctrld);
    CFRelease(ctrlu);
    CFRelease(akrd);
    CFRelease(akru);
    CFRelease(src);
}
- (IBAction)buttonSpotlight:(id)sender {
    _myLabel.stringValue = @"Spotlight";
    CGEventSourceRef src =
    CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    
    CGEventRef cmdd = CGEventCreateKeyboardEvent(src, 0x38, true);
    CGEventRef cmdu = CGEventCreateKeyboardEvent(src, 0x38, false);
    CGEventRef spcd = CGEventCreateKeyboardEvent(src, 0x31, true);
    CGEventRef spcu = CGEventCreateKeyboardEvent(src, 0x31, false);
    
    CGEventSetFlags(spcd, kCGEventFlagMaskCommand);
    CGEventSetFlags(spcu, kCGEventFlagMaskCommand);
    
    CGEventTapLocation loc = kCGHIDEventTap; // kCGSessionEventTap also works
    CGEventPost(loc, cmdd);
    CGEventPost(loc, spcd);
    CGEventPost(loc, spcu);
    CGEventPost(loc, cmdu);
    
    CFRelease(cmdd);
    CFRelease(cmdu);
    CFRelease(spcd);
    CFRelease(spcu);
    CFRelease(src);
}

- (IBAction)buttonDown:(id)sender {
    _myLabel.stringValue = @"Expose";
    CGEventSourceRef src =
    CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    
    CGEventRef ctrld = CGEventCreateKeyboardEvent(src, (CGKeyCode)59, true);
    CGEventRef ctrlu = CGEventCreateKeyboardEvent(src, (CGKeyCode)59, false);
    CGEventRef akdd = CGEventCreateKeyboardEvent(src, (CGKeyCode)125, true);
    CGEventRef akdu = CGEventCreateKeyboardEvent(src, (CGKeyCode)125, false);
    
    CGEventSetFlags(akdd, kCGEventFlagMaskControl);
    CGEventSetFlags(akdu, kCGEventFlagMaskControl);
    
    CGEventTapLocation loc = kCGHIDEventTap; // kCGSessionEventTap also works
    CGEventPost(loc, ctrld);
    CGEventPost(loc, akdd);
    CGEventPost(loc, ctrlu);
    CGEventPost(loc, akdu);
    
    CFRelease(ctrld);
    CFRelease(ctrlu);
    CFRelease(akdd);
    CFRelease(akdu);
    CFRelease(src);
}
@end
