//
//  CustomView.h
//  CoreGraphicsSample
//
//  Created by Parag Dulam on 28/12/10.
//  Copyright 2010 Define Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
#define CONTENT_VIEW_OFFSET 10.f
#define ARROW_HEIGHT 30.f
#define POPOVERVIEW_CORNER_RADIUS 10.f

typedef enum {
	CustomPopOverViewDirectionUp = 0,
	CustomPopOverViewDirectionDown,
	CustomPopOverViewDirectionLeft,
	CustomPopOverViewDirectionRight
} CustumPopOverDirection;

@interface UIWindow(Extended)
//-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
@end


@interface CustumPopOverView : UIView <UIGestureRecognizerDelegate>{
	UIViewController * contentViewController;
	CGSize contentSize;
	UIView * popOverView;
	UIColor * popOverColor;
	float offset;
	CustumPopOverDirection popOverDirection;
	NSArray * gradientColorsArray;
	UITapGestureRecognizer * singleFingerTapGesture;
}

@property (nonatomic,retain) UIViewController * contentViewController;
@property (nonatomic,assign) CGSize contentSize;
@property (nonatomic,assign) CustumPopOverDirection popOverDirection;
@property (nonatomic,assign) NSArray * gradientColorsArray;



-(id) initWithContentViewController: (UIViewController *) aViewController;
-(id) initWithContentViewController: (UIViewController *) aViewController WithPopOverColor:(UIColor *) popColor;
-(void) presentPopOverFromRect:(CGRect) rect;
-(void) dismissPopOver;
-(id) initWithContentViewController: (UIViewController *) aViewController 
				   WithPopOverColor:(UIColor *) popColor 
						 WithOffset:(float) aOffset;


-(id) initWithContentViewController: (UIViewController *) aViewController 
				   WithPopOverColor:(UIColor *) popColor 
						 WithOffset:(float) aOffset 
			   WithPopOverDirection:(CustumPopOverDirection) popDirection ;



-(BOOL) isPortrait;
-(BOOL) isFrameWithInWindow:(CGRect) aRect;
-(float) isWidthOfFrameWithinWindow:(CGRect) aRect;
-(float) isHeightOfFrameWithinWindow:(CGRect) aRect;
-(float) isXCoordinateOfRectInWindow:(CGRect) aRect;
-(float) isYCoordinateOfRectInWindow:(CGRect) aRect;

@end
