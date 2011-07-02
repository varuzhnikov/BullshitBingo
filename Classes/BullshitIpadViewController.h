//
//  BullshitIpadViewController.h
//  BullshitIpad
//
//  Created by svp on 21.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PointHandlerDelegate.h"

@interface BullshitIpadViewController : UIViewController <PointHandlerDelegate> {

}

@property (retain, nonatomic) IBOutlet UIView *aboutView;
@property (retain, nonatomic) IBOutlet UIView *bullshitView;

- (IBAction)aboutAction;
- (IBAction)showBullshitMap;


@end

