//
//  AppDelegate.m
//  Cocoa Speech Synthesizer
//
//  Created by 강민지 on 12/5/24.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (id) init {
    self = [super init];
    
    if (self) {
        speechSynthesizer = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
        [speechSynthesizer setDelegate:self];
        
        voices = [NSSpeechSynthesizer availableVoices];
    }
    
    return self;
}

- (void) awakeFromNib {
    NSString *defaultVoice = [NSSpeechSynthesizer defaultVoice];
    NSInteger defaultRow = [voices indexOfObject:defaultVoice];
    
    if (defaultRow != NSNotFound) {
        NSIndexSet *indices = [NSIndexSet indexSetWithIndex:defaultRow];
        [_tableView selectRowIndexes:indices byExtendingSelection:NO];
        [_tableView scrollRowToVisible:defaultRow];
    } else {
        NSLog(@"Default voice not found in available voices.");
    }
}

- (void) speechSynthesizer:(NSSpeechSynthesizer *)sender didFinishSpeaking:(BOOL)finishedSpeaking {
    [_speakButton setEnabled:YES];
    [_stopButton setEnabled:NO];
    [_tableView setEnabled:YES];
}

#pragma mark Table view dataSource methods

- (NSInteger) numberOfRowsInTableView:(NSTableView *)tableView {
    return (NSInteger)[voices count];
}

- (id)tableView:(NSTableView *)tableView
objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row {
    NSString *voice = [voices objectAtIndex:row];
    NSDictionary *voicesDictionary = [NSSpeechSynthesizer attributesForVoice:voice];
    return [voicesDictionary objectForKey:NSVoiceName];
}

- (void)tableViewSelectionDidChange:(NSNotification *)notification; {
    NSInteger row = [_tableView selectedRow];
    
    if (row == -1) {
        return;
    }
    
    NSString *selectedVoice = [voices objectAtIndex:row];
    [speechSynthesizer setVoice:selectedVoice];
}

#pragma mark Action methods

- (IBAction)stop:(id)sender {
    [speechSynthesizer stopSpeaking];
}

- (IBAction)speak:(id)sender {
    NSString *str = [_textField stringValue];
    
    if ([str length] == 0) {
        return;
    }
    
    [speechSynthesizer startSpeakingString:str];
    
    [_speakButton setEnabled:NO];
    [_stopButton setEnabled:YES];
    [_tableView setEnabled:NO];
}

@end
