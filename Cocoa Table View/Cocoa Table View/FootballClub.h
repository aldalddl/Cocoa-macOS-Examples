//
//  FootballClub.h
//  Cocoa Table View
//
//  Created by 강민지 on 12/7/24.
//

#import <Foundation/Foundation.h>

@interface FootballClub : NSObject {
    NSString *name;
    NSString *foundationYear;
}

@property (readwrite, copy) NSString *name;
@property (readwrite, copy) NSString *foundationYear;

@end
