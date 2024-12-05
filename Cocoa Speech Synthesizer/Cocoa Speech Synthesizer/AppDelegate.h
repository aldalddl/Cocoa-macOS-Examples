//
//  AppDelegate.h
//  Cocoa Speech Synthesizer
//
//  Created by 강민지 on 12/5/24.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate, NSSpeechSynthesizerDelegate, NSTabViewDelegate> {
    NSArray *voices;
    NSSpeechSynthesizer *speechSynthesizer;
}

@property (weak) IBOutlet NSView *window;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSButton *speakButton;
@property (weak) IBOutlet NSButton *stopButton;
@property (weak) IBOutlet NSTableView *tableView;

- (IBAction)speak:(id)sender;
- (IBAction)stop:(id)sender;

@end

