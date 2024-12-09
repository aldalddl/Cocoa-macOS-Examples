//
//  FootballClub.m
//  Cocoa Table View
//
//  Created by 강민지 on 12/7/24.
//

#import "FootballClub.h"

@implementation FootballClub

@synthesize name;
@synthesize foundationYear;

- (id)init {
    self = [super init];
    
    if (self) {
        name = @"FC Generic";
        foundationYear = @"2020";
    }
    
    return self;
}

@end
