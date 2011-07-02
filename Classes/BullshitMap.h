//
//  BullshitMap.h
//  BullshitIpad
//
//  Created by svp on 21.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PointHandlerDelegate.h"

@interface BullshitMap : UIView {
	CGPoint startPoint;
	CGPoint endPoint;
	CGMutablePathRef fingerDraw;
	UIImage* bullshitMapImage;
}

@property (nonatomic, retain) IBOutlet id<PointHandlerDelegate> delegate;

@end
