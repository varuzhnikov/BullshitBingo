//
//  BullshitMap.m
//  BullshitIpad
//
//  Created by svp on 02.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BullshitMap.h"

int const MAP_SIZE = 5;


@implementation BullshitMap

-(id)init {
	self = [super init];
	
	if (self) {
		cells = (bool**)malloc(MAP_SIZE * sizeof(bool));
		for (int i = 0; i < MAP_SIZE; i++) {
			cells[i] = (bool*)malloc(MAP_SIZE * sizeof(bool));
		}
		for (int i = 0; i < MAP_SIZE; i++) {
			for (int j = 0; j < MAP_SIZE; j++) {
				cells[i][j] = NO;
			}
		}
	}
	
	return self;
}

-(void)dealloc {
	for (int i = 0; i < MAP_SIZE; i++) {
		free(cells[i]);
	}
	free(cells);
	[super dealloc];
}

- (bool)isExpunged:(Cell)cell {	
	bool a= cells[cell.i][cell.j];
	return a;
}

- (void)expunge:(Cell)cell {
	cells[cell.i][cell.j] = YES;
}

@end
