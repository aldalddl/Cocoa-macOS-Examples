//
//  AppDelegate.m
//  Cocoa Table View
//
//  Created by 강민지 on 12/7/24.
//

#import "AppDelegate.h"
#import "FootballClub.h"

@implementation AppDelegate

- (id)init {
    self = [super init];
    
    if (self) {
        footballClubs = [[NSMutableArray alloc] init];
    }
    
    return  self;
}

- (void)awakeFromNib {
    [self setTableViewDataSource];
    [self setTableViewDelegate];
    [self setColumnsIdentifiers];
    [self setColumnsSortDescriptors];
}

#pragma mark Table View DataSource Methods

- (NSInteger)numberOfRowsInTableView:(NSTableView*)tableView {
    return  [footballClubs count];
}

- (id)tableView:(NSTableView *)tableView
objectValueForTableColumn:(NSTableColumn *)tableColumn
            row:(NSInteger)row {
    NSString *columnIdentifier = [tableColumn identifier];
    FootballClub *club = [footballClubs objectAtIndex:row];
    
    return  [club valueForKey:columnIdentifier];
}

- (void)tableView:(NSTableView *)tableView
   setObjectValue:(id)object
   forTableColumn:(NSTableColumn *)tableColumn
              row:(NSInteger)row {
    NSString *identifier = [tableColumn identifier];
    FootballClub *club = [footballClubs objectAtIndex:row];
    [club setValue:object forKey:identifier];
}

#pragma mark Table View SortDescriptor Methods

- (void)tableView:(NSTableView *)aTableView sortDescriptorsDidChange:(NSArray *)oldDescriptors {
    [footballClubs sortUsingDescriptors:[aTableView sortDescriptors]];
    [aTableView reloadData];
}

#pragma mark Action Methods

- (IBAction)removeClub:(id)sender {
}

- (IBAction)addClub:(id)sender {
}

#pragma mark Additional Methods

- (void)setTableViewDataSource {
    [tableView setDataSource:(id)self];
}

- (void)setTableViewDelegate {
    [tableView setDelegate:self];
}

- (void)setColumnsIdentifiers {
    NSArray<NSTableColumn*> *columns = [tableView tableColumns];
    int firstColumn = 0;
    int secondColumn = 1;
    
    for (int i = 0; i < [columns count]; i++) {
        NSTableColumn *column = [columns objectAtIndex:i];
        
        if (i == firstColumn) {
            [column setIdentifier:@"name"];
        } else if (i == secondColumn) {
            [column setIdentifier:@"foundationYear"];
        }
    }
}

- (void)setColumnsSortDescriptors {
    NSArray<NSTableColumn*> *columns = [tableView tableColumns];
    
    for (int i = 0; i < [columns count]; i++) {
        NSTableColumn *column = [columns objectAtIndex:i];
        NSSortDescriptor *sortDescriptor = [NSSortDescriptor sortDescriptorWithKey:[column identifier] ascending:YES selector:@selector(caseInsensitiveCompare:)];
        
        [column setSortDescriptorPrototype:sortDescriptor];
    }
}
@end
