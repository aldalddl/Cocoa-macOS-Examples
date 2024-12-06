//
//  AppDelegate.m
//  Cocoa Slider Binding
//
//  Created by 강민지 on 12/6/24.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (void)awakeFromNib {
    sliderValue = 50;
    
    [_slider bind:@"value"
         toObject:self
      withKeyPath:@"sliderValue"
          options:@{@"NSContinuouslyUpdatesValue":@YES,
                    @"NSAllowsEditingMultipleValuesSelectionBindingOption":@YES,
                    @"NSConditionallySetsEditableBindingOption":@YES,
                    @"NSRaisesForNotApplicableKeysBindingOption":@YES}];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (BOOL)applicationSupportsSecureRestorableState:(NSApplication *)app {
    return YES;
}


- (IBAction)decrement:(id)sender {
}

- (IBAction)increment:(id)sender {
}
@end
