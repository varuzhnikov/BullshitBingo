//
//  BullshitIpadViewController.m
//  BullshitIpad
//
//  Created by svp on 21.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BullshitIpadViewController.h"

@implementation BullshitIpadViewController

@synthesize aboutView;
@synthesize bullshitView;

- (void)dealloc {
    self.aboutView = nil;
    self.bullshitView = nil;
    
    [super dealloc];    
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

- (IBAction)aboutAction {
    NSLog(@"called aboutAction");
    self.view = self.aboutView;
}

- (IBAction)showBullshitMap {
    NSLog(@"called showBullshitMap");
    self.view = self.bullshitView;
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return NO;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

#pragma mark PointHandlerDelegate

- (void)handleLineWithStartPoint:(CGPoint)startPoint andEndPoint:(CGPoint)endPoint {
    NSLog(@"Received info about line %f,%f -> %f,%f", startPoint.x, startPoint.y, endPoint.x, endPoint.y);

    CGFloat centerX = 768 / 2;
    CGFloat centerY = 1004 / 2;
    
    CGFloat distanceFromCenterAndStartPoint = sqrt((startPoint.x - centerX)*(startPoint.x - centerX) + (startPoint.y - centerY)*(startPoint.y - centerY));
    
    
    NSLog(@"distance = %f", distanceFromCenterAndStartPoint);
    if (distanceFromCenterAndStartPoint < 100) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"BINGO" message:@"Bingo obtained!" delegate:nil cancelButtonTitle:@"Shit!" otherButtonTitles:nil];
        
        [alert show];
        [alert release];
        
    }
}


@end
