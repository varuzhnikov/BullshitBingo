//
//  BullshitIpadAppDelegate.h
//  BullshitIpad
//
//  Created by svp on 21.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BullshitIpadViewController;

@interface BullshitIpadAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    BullshitIpadViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet BullshitIpadViewController *viewController;

@end

