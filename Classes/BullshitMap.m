//
//  BullshitMap.m
//  BullshitIpad
//
//  Created by svp on 21.04.11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "BullshitMap.h" 


@implementation BullshitMap

- (id)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

-(void)dealloc {
	CGPathRelease(fingerDraw);
	[super dealloc];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch* touch = [touches anyObject];
	startPoint = [touch locationInView:self];
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
	UITouch* touch = [touches anyObject];
	endPoint = [touch locationInView:self];
	[self setNeedsDisplay];
}



// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
	if (!fingerDraw) {
		fingerDraw = CGPathCreateMutable();
	}
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
