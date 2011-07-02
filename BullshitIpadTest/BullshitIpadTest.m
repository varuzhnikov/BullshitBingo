//
//  BullshitIpadTest.m
//  BullshitIpadTest
//
//  Created by Vanger on 02.07.11.
//  Copyright 2011 Flexis. All rights reserved.
//

#import "BullshitIpadTest.h"
#import "BullshitMap.h"


@implementation BullshitIpadTest

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testSimpleExample {
    BullshitMap *map = [[BullshitMap alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    STAssertNotNil(map, @"map wasn't created!!!!");
}

- (void)testExample
{
    STFail(@"Unit tests are not implemented yet in BullshitIpadTest");
}

@end
