//
//  BullshitMapTest.m
//  BullshitIpad
//
//  Created by svp on 02.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BullshitMapTest.h"
#import "BullshitMap.h"

@implementation BullshitMapTest

-(void) testCreateBullshitMap {
	BullshitMap *bullshitMap = [[BullshitMap alloc] init];
	Cell cell = {4,4};
	STAssertFalse([bullshitMap isExpunged:cell], @"should't be expunged");
	[bullshitMap release];
}

-(void) testExpungeCell {
	BullshitMap *bullshitMap = [[BullshitMap alloc] init];
	Cell center = {3, 3};
	[bullshitMap expunge:center];
	STAssertTrue([bullshitMap isExpunged:center], @"center cell should be expunged");
	[bullshitMap release];
}

//- (void) STAssertBullshitMapNew: (BullshitMap *) bullshitMap  {
//	for (int i = 0; i < 5; i++) {
//		for (int j = 0; j < 5; j++) {
//			Cell cell = {i,j};
//			STAssertFalse([bullshitMap isExpunged:cell], 
//						  [NSString stringWithFormat:@"cell [%d, %d] should't be expunged", i, j]);
//		}
//	}
//}

@end
