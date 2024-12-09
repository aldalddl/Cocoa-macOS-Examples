//
//  AppDelegate.h
//  Cocoa Table View
//
//  Created by 강민지 on 12/7/24.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
    NSMutableArray *footballClubs;
    IBOutlet NSTableView *tableView;
}

@property (weak) IBOutlet NSWindow *window;

- (IBAction)addClub:(id)sender;
- (IBAction)removeClub:(id)sender;

- (void)setTableViewDataSource;
- (void)setTableViewDelegate;
@end

