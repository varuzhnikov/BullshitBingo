//
//  PointHandlerDelegate.h
//  BullshitIpad
//
//  Created by Vanger on 02.07.11.
//  Copyright 2011 Flexis. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol PointHandlerDelegate <NSObject>

- (void)handleLineWithStartPoint:(CGPoint)startPoint andEndPoint:(CGPoint)endPoint;

@end
