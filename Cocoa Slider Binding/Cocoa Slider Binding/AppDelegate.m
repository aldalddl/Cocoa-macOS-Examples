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

#pragma mark Action methods

- (IBAction)decrement:(id)sender {
    if (sliderValue == 0) {
        return;
    }
    
    [self willChangeValueForKey:@"sliderValue"];
    sliderValue--;
    [self didChangeValueForKey:@"sliderValue"];
    
    [self updateLabel];
}

- (IBAction)increment:(id)sender {
    if (sliderValue == 100) {
        return;
    }
    
    [self willChangeValueForKey:@"sliderValue"];
    sliderValue++;
    [self didChangeValueForKey:@"sliderValue"];
    
    [self updateLabel];
}

- (void)sliderValueChanged {
    [self updateLabel];
}

- (void)updateLabel {
    [_label setStringValue:[NSString stringWithFormat:@"%d", (int)sliderValue]];
}

@end
