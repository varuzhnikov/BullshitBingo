//
//  BullshitMapTest.m
//  BullshitIpad
//
//  Created by svp on 02.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BullshitMapTest.h"

@implementation BullshitMapTest

-(void) testCreateBullshitMap {
	BullshitMap *bullshitMap = [[BullshitMap alloc] init];
	Cell someCell = {0,4};
	STAssertFalse([bullshitMap isExpunged:someCell], @"should't be expunged");
	[bullshitMap release];
	STAssertTrue(YES, @"true");
}

-(void) testExpungeCell {
	BullshitMap *bullshitMap = [[BullshitMap alloc] init];
	Cell center = {3, 3};
	[bullshitMap expunge:center];
	STAssertTrue([bullshitMap isExpunged:center], @"center cell should be expunged");
	[bullshitMap release];
}

/**
	Tests that map
     0 1 2 3 4
	-----------
	|1|1|1|1|1|0
	-----------
	|0|0|0|0|0|1
	-----------
	|0|0|0|0|0|2
	-----------
	|0|0|0|0|0|3
	-----------
	|0|0|0|0|0|4
	-----------
*/
-(void)testFirstRowBullshit {
	BullshitMap *bullshitMap2 = [[BullshitMap alloc] init];
	for (int j = 0; j < MAP_SIZE; j++) {
		Cell cell = {0, j};
		[bullshitMap2 expunge:cell];	
	}
	STAssertTrue([bullshitMap2 isBullshit], @"Should be bullshit");
	[bullshitMap2 release];
}

/**
 Tests that map
  0 1 2 3 4
 -----------
 |1|1|1|1|0|0
 -----------
 |0|0|0|0|0|1
 -----------
 |0|0|0|0|0|2
 -----------
 |0|0|0|0|0|3
 -----------
 |0|0|0|0|0|4
 -----------
 */
-(void) testAFirstRowIsNotBullshit {
	BullshitMap *bullshitMap = [[BullshitMap alloc] init];
	for (int j = 0; j < 4; j++) {
		Cell cell = {0, j};
		[bullshitMap expunge:cell];	
	}
	STAssertFalse([bullshitMap isBullshit], @"Should't be bullshit");
	[bullshitMap release];
}

/**
 Tests that map
  0 1 2 3 4
 -----------
 |1|1|1|1|0|0
 -----------
 |0|0|0|1|0|1
 -----------
 |0|0|0|1|0|2
 -----------
 |0|0|0|1|0|3
 -----------
 |0|0|0|1|0|4
 -----------
 */
-(void) testFourthColumnIsBullshit {
	BullshitMap *bullshitMap = [[BullshitMap alloc] init];
	for (int j = 0; j < MAP_SIZE - 1; j++) {
		Cell cell = {0, j};
		[bullshitMap expunge:cell];	
	}
	for (int j = 0; j < MAP_SIZE; j++) {
		Cell cell = {j, 4};
		[bullshitMap expunge:cell];	
	}
	STAssertTrue([bullshitMap isBullshit], @"Should be bullshit");
	[bullshitMap release];
}

/*
 Tests that map
 0 1 2 3 4
-----------
|1|1|1|1|0|0
-----------
|0|0|0|1|0|1
-----------
|0|0|0|1|0|2
-----------
|0|0|0|1|0|3
-----------
|0|0|0|0|0|4
-----------
*/
-(void) testFourthColumnIsNotBullshit {
	BullshitMap *bullshitMap = [[BullshitMap alloc] init];
	for (int j = 0; j < MAP_SIZE - 1; j++) {
		Cell cell = {0, j};
		[bullshitMap expunge:cell];	
	}
	for (int j = 0; j < MAP_SIZE - 1; j++) {
		Cell cell = {j, 3};
		[bullshitMap expunge:cell];	
	}
	STAssertFalse([bullshitMap isBullshit], @"Should't be bullshit");
	[bullshitMap release];
}

@end
