//
//  BullshitIpadViewController.m
//  BullshitIpad
//
//  Created by svp on 21.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BullshitIpadViewController.h"

@implementation BullshitIpadViewController


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

- (void)aboutAction {
    NSLog(@"called aboutAction");
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    UIButton *button1 = [UIButton buttonWithType:UIButtonTypeCustom];

    CGFloat x = 140;
    CGFloat y = 900;
    CGFloat width = 150;
    CGFloat height = 40;
    button1.frame = CGRectMake(x, y, width, height);
        
    [button1 addTarget:self action:@selector(aboutAction) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button1];
    
    self.view.backgroundColor = [UIColor redColor];
    
    [super viewDidLoad];
}
/*
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


- (void)dealloc {
    [super dealloc];
}

@end
