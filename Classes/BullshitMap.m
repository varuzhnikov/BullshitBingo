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
		cells = (bool**)malloc(MAP_SIZE * sizeof(bool*));
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
	return cells[cell.i][cell.j];
}

- (void)expunge:(Cell)cell {
	cells[cell.i][cell.j] = YES;
}

- (bool)isBullshit {
	// For all rows
	for (int i = 0; i < MAP_SIZE; i++) {
		// Let bullshit is true
		bool rowBullshit = YES;
		for (int j = 0; j < MAP_SIZE; j++) {
			Cell cell = {i, j};
			// if one of cell of row is not expunged than theris no bullshit in this row
			if (![self isExpunged:cell]) {
				rowBullshit = NO;
			}
		}
		if (rowBullshit) {
			return YES; 
		}
	}
	
	// For all columns
	for (int j = 0; j < MAP_SIZE; j++) {
		// Let bullshit is true
		bool columnBullshit = YES;
		for (int i = 0; i < MAP_SIZE; i++) {
			Cell cell = {i,j};
			// if one of cell of column is not expunged than there is no bullshit in this column
			if (![self isExpunged:cell]) {
				columnBullshit = NO;
			}
		}
		if (columnBullshit) {
			return YES;
		}
	}
	return NO;
}

@end
