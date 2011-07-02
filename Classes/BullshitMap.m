//
//  BullshitMap.m
//  BullshitIpad
//
//  Created by svp on 21.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BullshitMap.h" 


@implementation BullshitMap

@synthesize delegate;

-(void)dealloc {
	CGPathRelease(fingerDraw);
	[bullshitMapImage release];
	[super dealloc];
}

- (BOOL)isMultitouch:(NSSet *)touches {
    return [touches count] > 1;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    if ([self isMultitouch:touches]) {
        return;
    }
	UITouch* touch = [touches anyObject];
	startPoint = [touch locationInView:self];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    if ([self isMultitouch:touches]) {
        return;
    }
	UITouch* touch = [touches anyObject];
	endPoint = [touch locationInView:self];
	[self setNeedsDisplay];
    [delegate handleLineWithStartPoint:startPoint andEndPoint:endPoint];
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
	if (!fingerDraw) {
		fingerDraw = CGPathCreateMutable();
		bullshitMapImage = [UIImage imageNamed:@"main_screen.png"];
	}	
	//Draw background font
	CGPoint imagePoint = CGPointMake(0, 0);
	[bullshitMapImage drawAtPoint:imagePoint];
	
    CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextSetLineWidth(context, 2.0);
	CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
	CGPathMoveToPoint(fingerDraw, NULL, startPoint.x, startPoint.y);
	CGPathAddLineToPoint(fingerDraw, NULL, endPoint.x, endPoint.y);
	CGContextAddPath(context, fingerDraw);
	CGContextStrokePath(context);
	startPoint = endPoint;
}

@end
