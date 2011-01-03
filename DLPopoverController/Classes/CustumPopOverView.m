//
//  CustomView.m
//  CoreGraphicsSample
//
//  Created by Parag Dulam on 28/12/10.
//  Copyright 2010 Define Labs. All rights reserved.
//

#import "CustumPopOverView.h"
#import <QuartzCore/QuartzCore.h>
//#import "UIColor-Expanded.h"



@implementation UIWindow(Extended)

//-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//	NSLog(@"touchesBegan");
//	for (id obj in self.subviews) {
//		if ([obj isMemberOfClass:[CustumPopOverView class]]) {
//			CustumPopOverView * objView = (CustumPopOverView *)obj;
////			CATransition *transition = [CATransition animation];
////			transition.duration = 1.f;
////			transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
////			transition.type = kCATransitionFade;
////			transition.subtype = nil;
////			transition.delegate = self;
////			[objView.layer addAnimation:transition forKey:nil];
////			[objView removeFromSuperview];
//			[objView dismissPopOver];
//			break;
//		}
//	}
//	NSLog(@"self.subviews : %@",self.subviews);
//}


@end



@implementation CustumPopOverView
@synthesize contentViewController;
@synthesize contentSize,popOverDirection;
@synthesize gradientColorsArray;


//-(void) setPopOverColor:(UIColor *) aColor { 
//	self.popOverColor = aColor;
//	popOverView.backgroundColor = self.popOverColor;
//}
//
//-(UIColor *) popOverColor {
//	return popOverColor;
//}


#pragma mark Initialization Methods


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
		self.backgroundColor = [UIColor clearColor];
    }
    return self;
}


//-(id) initWithContentViewController: (UIViewController *) aViewController {
//	CGRect contentViewControllerFrame = aViewController.view.frame;
//	if (self = [super initWithFrame:CGRectMake(0, 0, contentViewControllerFrame.size.width + 10, contentViewControllerFrame.size.height + 40)]) {
//		self.contentViewController = aViewController;
////		self.contentViewController.navigationController.navigationBar.tintColor = [UIColor yellowColor];
//		self.contentViewController.view.clipsToBounds = YES;
//		self.contentViewController.view.layer.cornerRadius = 10.f;
//		self.backgroundColor = [UIColor clearColor];
//		NSLog(@"contentViewControllerFrame %@",NSStringFromCGRect(contentViewControllerFrame));
//		NSLog(@"mainViewFrame %@",NSStringFromCGRect(self.frame));
//		
//		if (popOverView) {
//			[popOverView release];
//			popOverView = nil;
//		}
//		
//		
//		popOverView = [[UIView alloc] initWithFrame:CGRectMake(0,
//															   30,
//															   contentViewControllerFrame.size.width + 10,
//															   contentViewControllerFrame.size.height + 30)];
//		self.contentViewController.view.center = CGPointMake(popOverView.center.x, popOverView.center.y - 40);//popOverView.center;
//		NSLog(@"popOverView %@",NSStringFromCGRect(popOverView.frame));
//		popOverView.backgroundColor = popOverColor;
//		popOverView.clipsToBounds = YES;
//		popOverView.alpha = 1.f;
//		popOverView.layer.cornerRadius = 10.f;
//		[popOverView addSubview:self.contentViewController.view];
//		[self addSubview:popOverView];
//		
//	}
//	return self;
//}
//
//
//
//-(id) initWithContentViewController: (UIViewController *) aViewController WithPopOverColor:(UIColor *) popColor {
//	CGRect contentViewControllerFrame = aViewController.view.frame;
//	if (self = [super initWithFrame:CGRectMake(0, 0, contentViewControllerFrame.size.width + 10, contentViewControllerFrame.size.height + 40)]) {
//		self.contentViewController = aViewController;
//		
//		if (popOverColor) {
//			[popOverColor release];
//			popOverColor = nil;
//		}
//		
//		
//		popOverColor = [[UIColor alloc] initWithCGColor:popColor.CGColor];
//		//		self.contentViewController.navigationController.navigationBar.tintColor = [UIColor yellowColor];
//		self.contentViewController.view.clipsToBounds = YES;
//		self.contentViewController.view.layer.cornerRadius = 10.f;
//		self.backgroundColor = [UIColor clearColor];
//		NSLog(@"contentViewControllerFrame %@",NSStringFromCGRect(contentViewControllerFrame));
//		NSLog(@"mainViewFrame %@",NSStringFromCGRect(self.frame));
//		
//		if (popOverView) {
//			[popOverView release];
//			popOverView = nil;
//		}
//		
//		
//		popOverView = [[UIView alloc] initWithFrame:CGRectMake(0,
//															   30,
//															   contentViewControllerFrame.size.width + 10,
//															   contentViewControllerFrame.size.height + 30)];
//		self.contentViewController.view.center = CGPointMake(popOverView.center.x, popOverView.center.y - 40);//popOverView.center;
//		NSLog(@"popOverView %@",NSStringFromCGRect(popOverView.frame));
//		popOverView.backgroundColor = popOverColor;
//		popOverView.clipsToBounds = YES;
//		popOverView.alpha = 1.f;
//		popOverView.layer.cornerRadius = 10.f;
//		[popOverView addSubview:self.contentViewController.view];
//		[self addSubview:popOverView];
//		
//	}
//	return self;
//}
//
//
//
//
//-(id) initWithContentViewController: (UIViewController *) aViewController 
//				   WithPopOverColor:(UIColor *) popColor 
//						 WithOffset:(float) aOffset {
//	CGRect contentViewControllerFrame = aViewController.view.frame;
//	if (self = [super initWithFrame:CGRectMake(0,
//											   0,
//											   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET,
//											   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET + ARROW_HEIGHT)]) {
//		self.contentViewController = aViewController;
//		offset = aOffset;
//
//		
//		
//		popOverColor = [[UIColor alloc] initWithCGColor:popColor.CGColor];
//		//		self.contentViewController.navigationController.navigationBar.tintColor = [UIColor yellowColor];
//		self.contentViewController.view.clipsToBounds = YES;
//		self.contentViewController.view.layer.cornerRadius = CONTENT_VIEW_OFFSET;
//		self.backgroundColor = [UIColor clearColor];
//		NSLog(@"contentViewControllerFrame %@",NSStringFromCGRect(contentViewControllerFrame));
//		NSLog(@"mainViewFrame %@",NSStringFromCGRect(self.frame));
//		
//		if (popOverView) {
//			[popOverView release];
//			popOverView = nil;
//		}
//		
//		popOverView = [[UIView alloc] initWithFrame:CGRectMake(0,
//															   ARROW_HEIGHT,
//															   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET,
//															   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET)];
//		self.contentViewController.view.center = CGPointMake(popOverView.center.x, popOverView.center.y - ARROW_HEIGHT);//popOverView.center;
//		NSLog(@"popOverView %@",NSStringFromCGRect(popOverView.frame));
//		popOverView.backgroundColor = popOverColor;
//		popOverView.clipsToBounds = YES;
//		popOverView.alpha = 1.f;
//		popOverView.layer.cornerRadius = CONTENT_VIEW_OFFSET;
//		[popOverView addSubview:self.contentViewController.view];
//		[self addSubview:popOverView];
//	}
//	return self;
//}



-(id) initWithContentViewController: (UIViewController *) aViewController 
				   WithPopOverColor:(UIColor *) popColor 
						 WithOffset:(float) aOffset 
			   WithPopOverDirection:(CustumPopOverDirection) popDirection {
	self.popOverDirection = popDirection;
	CGRect contentViewControllerFrame = aViewController.view.frame;
	self.autoresizesSubviews = YES;
	self.autoresizingMask = UIViewAutoresizingFlexibleWidth && UIViewAutoresizingFlexibleHeight;
	if (popOverView) {
		[popOverView release];
		popOverView = nil;
	}
	switch (self.popOverDirection) {
		case CustomPopOverViewDirectionUp:
			{
				self = [super initWithFrame:CGRectMake(0,
													   0,
													   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET,
													   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET + ARROW_HEIGHT)];
				
				popOverView = [[UIView alloc] initWithFrame:CGRectMake(0,
																	   ARROW_HEIGHT,
																	   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET,
																	   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET)];
//				self.contentViewController.view.center = CGPointMake(popOverView.center.x, popOverView.center.y - ARROW_HEIGHT);//popOverView.center;

				
			}
			break;
		case CustomPopOverViewDirectionDown:
			{
				self = [super initWithFrame:CGRectMake(0,
													   0,
													   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET,
													   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET + ARROW_HEIGHT)];
				
				popOverView = [[UIView alloc] initWithFrame:CGRectMake(0,
																	   0,
																	   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET,
																	   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET)];
//				self.contentViewController.view.center = popOverView.center;

			}
			break;
		case CustomPopOverViewDirectionLeft:
			{
				self = [super initWithFrame:CGRectMake(0,
													   0,
													   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET + ARROW_HEIGHT,
													   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET)];
				
				popOverView = [[UIView alloc] initWithFrame:CGRectMake(ARROW_HEIGHT,
																	   0,
																	   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET,
																	   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET)];
				
			}
			break;
		case CustomPopOverViewDirectionRight:
			{
				self = [super initWithFrame:CGRectMake(0,
													   0,
													   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET + ARROW_HEIGHT,
													   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET)];
				
				popOverView = [[UIView alloc] initWithFrame:CGRectMake(0,
																	   0,
																	   contentViewControllerFrame.size.width + CONTENT_VIEW_OFFSET,
																	   contentViewControllerFrame.size.height + CONTENT_VIEW_OFFSET)];
				
			}
			break;
		default:
			break;
	}
	
	if (self) {
		self.contentViewController = aViewController;
		self.contentViewController.view.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin; 
		offset = aOffset;
		popOverColor = [[UIColor alloc] initWithCGColor:popColor.CGColor];
		//		self.contentViewController.navigationController.navigationBar.tintColor = [UIColor yellowColor];
		self.contentViewController.view.clipsToBounds = YES;
		self.contentViewController.view.layer.cornerRadius = CONTENT_VIEW_OFFSET;
		self.backgroundColor = [UIColor greenColor];
		NSLog(@"contentViewControllerFrame %@",NSStringFromCGRect(contentViewControllerFrame));
		NSLog(@"mainViewFrame %@",NSStringFromCGRect(self.frame));
		
			
		switch (self.popOverDirection) {
			case CustomPopOverViewDirectionUp:
				self.contentViewController.view.center = CGPointMake(popOverView.center.x, popOverView.center.y - ARROW_HEIGHT);//popOverView.center;
				break;
			case CustomPopOverViewDirectionDown:
				self.contentViewController.view.center = popOverView.center;
				break;
			case CustomPopOverViewDirectionLeft:
				self.contentViewController.view.center = CGPointMake(popOverView.center.x - ARROW_HEIGHT, popOverView.center.y);//popOverView.center;
				break;
			case CustomPopOverViewDirectionRight:
				self.contentViewController.view.center = popOverView.center;
				break;
			default:
				break;
		}
		
//		self.contentViewController.view.center = CGPointMake(popOverView.center.x, popOverView.center.y - ARROW_HEIGHT);//popOverView.center;
//		self.contentViewController.view.center = popOverView.center;
		NSLog(@"popOverView %@",NSStringFromCGRect(popOverView.frame));
		popOverView.backgroundColor = popOverColor;
		
		//CAGradientLayer *gradient = [CAGradientLayer layer];
//		gradient.frame = popOverView.bounds;
//		gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:(CGFloat)(41.f/255.f) green:(CGFloat)(101.f/255.f) blue:(CGFloat)(251.f/255.f) alpha:1] CGColor], 
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],nil];
//		
//		[popOverView.layer insertSublayer:gradient atIndex:0];
		popOverView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleLeftMargin | UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin; 
//		[popOverView.layer setBorderColor:[UIColor darkGrayColor].CGColor];
//		[popOverView.layer setBorderWidth: 1.0];
		
		popOverView.clipsToBounds = YES;
		popOverView.alpha = 1.f;
		popOverView.layer.cornerRadius = CONTENT_VIEW_OFFSET;
		[popOverView addSubview:self.contentViewController.view];
		[self addSubview:popOverView];
		
		singleFingerTapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
		singleFingerTapGesture.numberOfTapsRequired = 1;
		singleFingerTapGesture.delegate = self;
		[[UIApplication sharedApplication].keyWindow addGestureRecognizer:singleFingerTapGesture];
		//[singleFingerTapGesture release];
		
	}
	return self;
}


#pragma mark Almighty Draw Rect Method
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
	CGContextRef context = UIGraphicsGetCurrentContext();
	
	self.clipsToBounds = YES;
	self.layer.cornerRadius = POPOVERVIEW_CORNER_RADIUS;
//	self.layer.borderColor = [UIColor blueColor].CGColor;
//	self.layer.borderWidth = 5.f;
	self.layer.shadowColor = [UIColor blackColor].CGColor;
	self.layer.shadowOffset = CGSizeMake(10, 10);
	self.layer.shadowOpacity = 1.f;
	self.layer.shadowRadius = POPOVERVIEW_CORNER_RADIUS;
	self.layer.masksToBounds = NO;
	
	
//	CGContextSetShadow(context, CGSizeMake(15, 20), 5);
//    CGContextRestoreGState(context);


	
	
	
//	NSLog(@"rgb %f %f %f",popOverColor.red,popOverColor.green,popOverColor.blue);
//	NSLog(@"color %@",[popOverColor stringFromColor]);
	
	
	CGColorRef color = [popOverColor CGColor];
	
//	int numComponents = CGColorGetNumberOfComponents(color);
	const CGFloat *components = CGColorGetComponents(color);
//	if (numComponents == 4)
//	{
//		const CGFloat *components = CGColorGetComponents(color);
//		CGFloat red = components[0];
//		CGFloat green = components[1];
//		CGFloat blue = components[2];
//		CGFloat alphaValue = components[3];
//	}
//	
//	[uicolor release];
	
		
	if (color != [UIColor blackColor].CGColor && color != [UIColor whiteColor].CGColor) {
		CGContextSetRGBFillColor(context, 
								 components[0],
								 components[1],
								 components[2],
								 1);		
	} else if (color == [UIColor blackColor].CGColor) {
		CGContextSetRGBFillColor(context, 
								 0,
								 0,
								 0,
								 1);				
	} else if (color == [UIColor whiteColor].CGColor) {
		CGContextSetRGBFillColor(context, 
								 1,
								 1,
								 1,
								 1);				
	}
	switch (self.popOverDirection) {
		case CustomPopOverViewDirectionDown:
		{
			float mainViewWidth = self.frame.size.width;
			float arrowPosition = (mainViewWidth / 2) + offset;
			if (arrowPosition < 40) {
				arrowPosition = 40;
			}else if (arrowPosition > mainViewWidth - 40) {
				arrowPosition = mainViewWidth - 40;
			}
			CGContextMoveToPoint(context,arrowPosition , self.frame.size.height);
			CGContextAddLineToPoint(context, arrowPosition + 30, self.frame.size.height - 31);
			CGContextAddLineToPoint(context, arrowPosition - 30, self.frame.size.height - 31);
			CGContextClosePath(context);
			CGContextFillPath(context);
			
		}
			break;
		case CustomPopOverViewDirectionUp:
		{
			float mainViewWidth = self.frame.size.width;
			float arrowPosition = (mainViewWidth / 2) + offset;
			if (arrowPosition < 40) {
				arrowPosition = 40;
			}else if (arrowPosition > mainViewWidth - 40) {
				arrowPosition = mainViewWidth - 40;
			}
			CGContextMoveToPoint(context,arrowPosition , 0);
			CGContextAddLineToPoint(context, arrowPosition + 30, 31);
			CGContextAddLineToPoint(context, arrowPosition - 30, 31);
			CGContextClosePath(context);
			CGContextFillPath(context);
			
		}
			break;
		case CustomPopOverViewDirectionLeft:
		{
			float mainViewHeight = self.frame.size.height;
			float arrowPosition = (mainViewHeight / 2) + offset;
			if (arrowPosition < 40) {
				arrowPosition = 40;
			}else if (arrowPosition > mainViewHeight - 40) {
				arrowPosition = mainViewHeight - 40;
			}
			NSLog(@"Rect %@",NSStringFromCGRect(self.frame));
			NSLog(@"maxX %f",self.frame.size.width);
			CGContextMoveToPoint(context,0, arrowPosition );
			CGContextAddLineToPoint(context, 31,arrowPosition - 30);
			CGContextAddLineToPoint(context, 31,arrowPosition + 30);
			CGContextClosePath(context);
			CGContextFillPath(context);
		}
			break;
		case CustomPopOverViewDirectionRight:
		{
			float mainViewHeight = self.frame.size.height;
			float arrowPosition = (mainViewHeight / 2) + offset;
			if (arrowPosition < 40) {
				arrowPosition = 40;
			}else if (arrowPosition > mainViewHeight - 40) {
				arrowPosition = mainViewHeight - 40;
			}
			NSLog(@"Rect %@",NSStringFromCGRect(self.frame));
			NSLog(@"maxX %f",self.frame.size.width);
			CGContextMoveToPoint(context,self.frame.size.width, arrowPosition );
			CGContextAddLineToPoint(context, self.frame.size.width - 31,arrowPosition - 30);
			CGContextAddLineToPoint(context, self.frame.size.width - 31,arrowPosition + 30);
			CGContextClosePath(context);
			CGContextFillPath(context);
		}
			break;
			
		default:
			break;
	}
}


#pragma mark dealloc Method

- (void)dealloc {
	
	[contentViewController release];
	contentViewController = nil;
	
	[popOverColor release];
	popOverColor = nil;
	
    [super dealloc];
}




#pragma mark Present PopOver COntroller 

-(void) presentPopOverFromRect:(CGRect) rect {

	switch (self.popOverDirection) {
		case CustomPopOverViewDirectionUp:
			self.center = CGPointMake(rect.origin.x + (rect.size.width/2), rect.origin.y + rect.size.height+(rect.size.height/2) + (self.frame.size.height/2));//CGPointMake(rect.origin.x + (rect.size.width/2), rect.size.height + (self.frame.size.height));
			break;
		case CustomPopOverViewDirectionDown:
			self.center = CGPointMake(rect.origin.x + (rect.size.width/2), rect.origin.y - (self.frame.size.height/2) + 20);
			break;
		case CustomPopOverViewDirectionLeft:
			self.center = CGPointMake(CGRectGetMaxX(rect) + (self.frame.size.width / 2), rect.origin.y + rect.size.height);//CGPointMake(rect.origin.x + (rect.size.width/2), rect.size.height + (self.frame.size.height));
			break;
		case CustomPopOverViewDirectionRight:
			self.center = CGPointMake(rect.origin.x - (self.frame.size.width/2), rect.origin.y + rect.size.height);//CGPointMake(rect.origin.x + (rect.size.width/2), rect.size.height + (self.frame.size.height));
			break;
		default:
			break;
	}
	
	CGRect mainViewFrame = self.frame;	
//	NSLog(@"BOOL %i",[self isPortrait]);
//	NSLog(@"BOOL %i",[self isFrameWithInWindow:mainViewFrame]);
//	NSLog(@"Width %f",[self isWidthOfFrameWithinWindow:mainViewFrame]);
//	NSLog(@"Height %f",[self isHeightOfFrameWithinWindow:mainViewFrame]);
	
	if (![self isFrameWithInWindow:mainViewFrame]) {
//		if ([self isXCoordinateOfRectInWindow:mainViewFrame]) {
//			mainViewFrame.origin.x = 5;
//		}
//		if ([self isYCoordinateOfRectInWindow:mainViewFrame]) {
//			mainViewFrame.origin.y = 5;
//		}
		mainViewFrame.size.width = [self isWidthOfFrameWithinWindow:mainViewFrame];
		mainViewFrame.size.height = [self isHeightOfFrameWithinWindow:mainViewFrame];
		mainViewFrame.origin.x = [self isXCoordinateOfRectInWindow:mainViewFrame];
		mainViewFrame.origin.y = [self isYCoordinateOfRectInWindow:mainViewFrame];
		self.frame = mainViewFrame;
	}
	
//	
//	if (mainViewFrame.origin.x < 5) {
//		mainViewFrame.origin.x = 5;
//	}
//	if (mainViewFrame.origin.y < 5) {
//		mainViewFrame.size.height = rect.origin.y - 5;
//		mainViewFrame.origin.y = 5;
//	}
//	if (CGRectGetMaxY(mainViewFrame) > 999) {
//		mainViewFrame.size.height = 999 - mainViewFrame.origin.y - 40; 
//	}
//	if (CGRectGetMaxX(mainViewFrame) > 763) {
//		mainViewFrame.size.width = 763 - mainViewFrame.origin.x - 40; 
//	}
//	self.frame = mainViewFrame;
//	
//	switch (self.popOverDirection) {
//		case CustomPopOverViewDirectionUp:
//			self.center = CGPointMake(rect.origin.x + (rect.size.width/2), rect.origin.y + rect.size.height+(rect.size.height/2) + (self.frame.size.height/2));//CGPointMake(rect.origin.x + (rect.size.width/2), rect.size.height + (self.frame.size.height));
//			break;
//		case CustomPopOverViewDirectionDown:
//			self.center = CGPointMake(rect.origin.x + (rect.size.width/2), rect.origin.y - (self.frame.size.height/2) + 20);
//			break;
//		case CustomPopOverViewDirectionLeft:
//			self.center = CGPointMake(CGRectGetMaxX(rect) + (self.frame.size.width / 2), rect.origin.y + rect.size.height);//CGPointMake(rect.origin.x + (rect.size.width/2), rect.size.height + (self.frame.size.height));
//			break;
//		case CustomPopOverViewDirectionRight:
//			self.center = CGPointMake(rect.origin.x - (self.frame.size.width/2), rect.origin.y + rect.size.height);//CGPointMake(rect.origin.x + (rect.size.width/2), rect.size.height + (self.frame.size.height));
//			break;
//		default:
//			break;
//	}
	
	[[[[UIApplication sharedApplication] delegate] window] addSubview:self];
	self.hidden = YES;
	NSLog(@"center %@",NSStringFromCGPoint(self.center));
	NSLog(@"self.frame %@",NSStringFromCGRect(self.frame));
	
	
//	if (self.popOverDirection == CustomPopOverViewDirectionUp || self.popOverDirection == CustomPopOverViewDirectionDown) {
//		if (mainViewFrame.origin.x < 5) {
//			self.frame = CGRectMake(5, mainViewFrame.origin.y, mainViewFrame.size.width, mainViewFrame.size.height);
//			offset = -(rect.origin.x + (rect.size.width/2));
//			[self setNeedsDisplay];
//		} else if (CGRectGetMaxX(mainViewFrame) > 763) {
//			self.frame = CGRectMake(763 - mainViewFrame.size.width, mainViewFrame.origin.y, mainViewFrame.size.width, mainViewFrame.size.height);
//			offset = (rect.origin.x + (rect.size.width/2));
//			[self setNeedsDisplay];
//		}
//	} else if (self.popOverDirection == CustomPopOverViewDirectionLeft || self.popOverDirection == CustomPopOverViewDirectionRight) {
//		if (mainViewFrame.origin.y < 0) {
//			self.frame = CGRectMake(mainViewFrame.origin.x, 0, mainViewFrame.size.width, mainViewFrame.size.height);
//			offset = -(rect.origin.y + (rect.size.height/2));
//			[self setNeedsDisplay];
//		} else if (CGRectGetMaxY(mainViewFrame) > 1004) {
//			self.frame = CGRectMake(mainViewFrame.origin.x, 1004 - mainViewFrame.size.height, mainViewFrame.size.width, mainViewFrame.size.height);
//			offset = (rect.origin.y + (rect.size.height/2));
//			[self setNeedsDisplay];
//		}
//	}
	CATransition *transition = [CATransition animation];
	transition.duration = .3f;
	transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	transition.type = kCATransitionReveal;
	[self.layer addAnimation:transition forKey:nil];
	self.hidden = NO;
}

-(void) dismissPopOver {
	CATransition *transition = [CATransition animation];
	transition.duration = .3f;
	transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	transition.type = kCATransitionFade;
	transition.subtype = nil;
	transition.delegate = self;
	[self.layer addAnimation:transition forKey:nil];
	self.hidden = YES;
	
	[[UIApplication sharedApplication].keyWindow removeGestureRecognizer:singleFingerTapGesture];
	singleFingerTapGesture = nil;
}


#pragma mark UITouch for this View

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//	NSLog(@"event");
}


#pragma mark Animation delegate Methods

-(void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag {
	[self removeFromSuperview];
}

-(void)setGradientColorsArray:(NSArray*)colorsArray{
//	if (gradientColorsArray) {
//		[gradientColorsArray release];
//		gradientColorsArray = nil;
//	}
	CAGradientLayer *gradient = [CAGradientLayer layer];
	gradient.frame = popOverView.bounds;
	gradient.colors = colorsArray;
	[popOverView.layer insertSublayer:gradient atIndex:0];
}

-(void)handleSingleTap:(UITapGestureRecognizer*)gestureRecognizer{
	NSLog(@"window touched");
	[self dismissPopOver];
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch{
	CGPoint touchPoint = [touch locationInView:[UIApplication sharedApplication].keyWindow] ;
	
	NSLog(@"x %f",touchPoint.x);
	NSLog(@"y %f",touchPoint.y);
	
	CGPoint touchPoint1 = [touch locationInView:contentViewController.view] ;
	
	NSLog(@"x %f",touchPoint1.x);
	NSLog(@"y %f",touchPoint1.y);
	
	UIView * hitView = [self hitTest:touchPoint withEvent:nil];
	NSLog(@"%@",hitView);
	
	UIView * hitView1 = [contentViewController.view hitTest:touchPoint1 withEvent:nil];
	NSLog(@"%@",hitView1);
	
	if (hitView1)
		return NO;
	
//	if ([contentViewController.view.subviews containsObject:hitView] || hitView == contentViewController.view)
//		return NO;
	
	return YES;
	//	BOOL insideMultimedia = [multimediaSegmentControlBackgroundView pointInside:touchPoint withEvent:nil];
	//
	//	//NOOLinsid
	//		return !insideMultimedia;
	////		NSLog(@"%f %f",touchPoint.x,touchPoint.y);
	////		NSLog(@"%f %f",touchPoint.x,touchPoint.y);
	////		return NO;
	
	/*this works but doesnt seem correct*/
	//	CGPoint touchPoint = [touch locationInView:self.view] ;
	//	BOOL insideMultimedia = [scrollView hitTest:touchPoint withEvent:nil];
	//	return !insideMultimedia;
}


#pragma mark Frame Methods


-(BOOL) isPortrait {
	if ([[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortraitUpsideDown) {
		return YES;
	} else {
		return NO;
	}
}


-(BOOL) isFrameWithInWindow:(CGRect) aRect {
	if ([self isPortrait]) {
		if (aRect.origin.x < 0 || aRect.origin.y < 0) {
			return NO;
		} else if (CGRectGetMaxY(aRect) > 1019 || CGRectGetMaxX(aRect) > 763) {
			return NO;
		}
	} else {
		if (aRect.origin.x < 0 || aRect.origin.y < 0) {
			return NO;
		} else if (CGRectGetMaxY(aRect) > 763 || CGRectGetMaxX(aRect) > 1019) {
			return NO;
		}
	}
	return YES;
}


-(float) isWidthOfFrameWithinWindow:(CGRect) aRect {
	if (aRect.origin.x > 0) {
		if ([self isPortrait]) {
			if (CGRectGetMaxX(aRect) > 763) {
				return aRect.size.width > 763 ? 763 : 763 - aRect.origin.x;
			}
		} else {
			if (CGRectGetMaxX(aRect) > 1019) {
				return aRect.size.width > 1019 ? 1019 : 1019 - aRect.origin.x;
			}
		}
	} else {
		return CGRectGetMaxX(aRect);
	}
	return aRect.size.width;
}


-(float) isHeightOfFrameWithinWindow:(CGRect) aRect {
	if (aRect.origin.y > 0) {
		if ([self isPortrait]) {
			if (CGRectGetMaxY(aRect) > 1019) {
				return aRect.size.height > 1019 ? 1019 : 1019 - aRect.origin.y;
			}
		} else {
			if (CGRectGetMaxY(aRect) > 763) {
				return aRect.size.height > 763 ? 763 : 763 - aRect.origin.y;
			}
		}		
	} else {
		return CGRectGetMaxY(aRect);
	}

	return aRect.size.height;
}


-(float) isXCoordinateOfRectInWindow:(CGRect) aRect {
	return aRect.origin.x < 0 ? 5 : aRect.origin.x;
}

-(float) isYCoordinateOfRectInWindow:(CGRect) aRect {
	return aRect.origin.y < 0 ? 5 : aRect.origin.y;
}



@end
