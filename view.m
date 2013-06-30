//
//  view.m
//  cross
//
//  Created by PHILIP JACOBS on 6/29/13.
//  Copyright (c) 2013 PHILIP JACOBS. All rights reserved.
//

#import "View.h"

@implementation View

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
		self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
	CGSize size = self.bounds.size;
	CGFloat min = MIN(size.width, size.height);
	CGFloat longSide = min * 15/16;
	CGFloat shortSide = longSide / 3;

	CGContextRef c = UIGraphicsGetCurrentContext();
	CGContextBeginPath(c);
	
	//Move origin to the center
	CGContextTranslateCTM(c, size.width / 2, size.height / 2);
	//rotate the context 15 degrees counter clockwise
	CGContextRotateCTM(c, -15.0 * M_PI / 180.0);
	//Make the Y axis point up.
	CGContextScaleCTM(c, 1, -1);
		
/*
	// Make using 2 rectangles
	CGRect horizontal = CGRectMake(-longSide / 2, -shortSide / 2, longSide, shortSide);
	CGRect vertical = CGRectMake(-shortSide / 2, -longSide / 2, shortSide, longSide);
	CGContextAddRect(c, horizontal);
	CGContextAddRect(c, vertical);
*/
	
	//Make using one rect twice - rotating the context in between
	CGRect horizontal = CGRectMake(-longSide / 2, -shortSide / 2, longSide, shortSide);
	CGContextAddRect(c, horizontal);
		
	CGContextSetRGBFillColor(c, 1.0, 0.0, 0.0, 1);
	CGContextFillPath(c);

	CGContextBeginPath(c);
	// The second arg below takes radians.  The formula to convert degrees to radians is
	// degrees * Pi / 180
	CGContextRotateCTM(c, 90 * M_PI / 180);
	CGContextAddRect(c, horizontal);
	CGContextSetRGBFillColor(c, 0.0, 0.0, 1.0, .5);
	CGContextFillPath(c);
	
}


@end
