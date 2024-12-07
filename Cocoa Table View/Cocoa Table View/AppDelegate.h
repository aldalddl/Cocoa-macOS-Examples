//
//  AppDelegate.h
//  Cocoa Table View
//
//  Created by 강민지 on 12/7/24.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSWindow *window;

- (IBAction)addClub:(id)sender;
- (IBAction)removeClub:(id)sender;

@end

