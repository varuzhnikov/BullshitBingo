//
//  GameEngineTest.m
//  BullshitIpad
//
//  Created by svp on 03.07.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "GameEngineTest.h"


@implementation GameEngineTest

#if USE_APPLICATION_UNIT_TEST     // all code under test is in the iPhone Application

- (void) testAppDelegate {
	//NSLog([OCMock class]);
//    //id yourApplicationDelegate = [[UIApplication sharedApplication] delegate];
//    //STAssertNotNil(yourApplicationDelegate, @"UIApplication failed to find the AppDelegate");
//    id string = [OCMock mockObjectForClass:[NSString class]];
//    [[[string stub] andReturn:NSRange(0, 4)] rangeOfString:[OCMConstraint any]];
//	
//    STAssertTrue([object badWordInString:string], @"Should have found bad word");
}

#else                           // all code under test must be linked into the Unit Test bundle

- (void) testMath {
    
    STAssertTrue((1+1)==2, @"Compiler isn't feeling well today :-(" );
    
}


#endif


@end
