//
//  BullshitMap.h
//  BullshitIpad
//
//  Created by svp on 02.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

extern int const MAP_SIZE;

typedef struct {
	int i;
	int j;
} Cell;

@interface BullshitMap : NSObject {
	bool** cells;
}

- (bool)isExpunged:(Cell)cell;
- (void)expunge:(Cell)cell;
- (bool)isBullshit;

@end
