//
//  AppDelegate.h
//  Cocoa Slider Binding
//
//  Created by 강민지 on 12/6/24.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSInteger sliderValue;
}

@property (weak) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSSlider *slider;
@property (weak) IBOutlet NSTextField *label;
@property (weak) IBOutlet NSButton *incrementButton;
@property (weak) IBOutlet NSButton *decrementButton;

- (IBAction)increment:(id)sender;
- (IBAction)decrement:(id)sender;
- (void)sliderValueChanged;
- (void)updateLabel;

@end

