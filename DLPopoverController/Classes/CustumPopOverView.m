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

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
	NSLog(@"touchesBegan");
	for (id obj in self.subviews) {
		if ([obj isMemberOfClass:[CustumPopOverView class]]) {
			CustumPopOverView * objView = (CustumPopOverView *)obj;
//			CATransition *transition = [CATransition animation];
//			transition.duration = 1.f;
//			transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionDefault];
//			transition.type = kCATransitionFade;
//			transition.subtype = nil;
//			transition.delegate = self;
//			[objView.layer addAnimation:transition forKey:nil];
//			[objView removeFromSuperview];
			[objView dismissPopOver];
			break;
		}
	}
	NSLog(@"self.subviews : %@",self.subviews);
}


-(void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag {
	
}

@end



@implementation CustumPopOverView
@synthesize contentViewController;
@synthesize contentSize,popOverDirection;


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
		offset = aOffset;
		popOverColor = [[UIColor alloc] initWithCGColor:popColor.CGColor];
		//		self.contentViewController.navigationController.navigationBar.tintColor = [UIColor yellowColor];
		self.contentViewController.view.clipsToBounds = YES;
		self.contentViewController.view.layer.cornerRadius = CONTENT_VIEW_OFFSET;
		self.backgroundColor = [UIColor clearColor];
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
				self.contentViewController.view.center = popOverView.center;
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
		//popOverView.backgroundColor = popOverColor;
		
		CAGradientLayer *gradient = [CAGradientLayer layer];
		gradient.frame = popOverView.bounds;
		gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:(CGFloat)(41.f/255.f) green:(CGFloat)(101.f/255.f) blue:(CGFloat)(251.f/255.f) alpha:1] CGColor], 
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
						   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],nil];
		
		[popOverView.layer insertSublayer:gradient atIndex:0];
		[popOverView.layer setBorderColor:[UIColor darkGrayColor].CGColor];
		[popOverView.layer setBorderWidth: 1.0];
		
		popOverView.clipsToBounds = YES;
		popOverView.alpha = 1.f;
		popOverView.layer.cornerRadius = CONTENT_VIEW_OFFSET;
		[popOverView addSubview:self.contentViewController.view];
		[self addSubview:popOverView];
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
		case CustomPopOverViewDirectionRight:
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
			self.center = CGPointMake(rect.origin.x + (rect.size.width/2), rect.origin.y + rect.size.height+(rect.size.height/2) + (self.frame.size.height/2));//CGPointMake(rect.origin.x + (rect.size.width/2), rect.size.height + (self.frame.size.height));
			break;
		case CustomPopOverViewDirectionRight:
			self.center = CGPointMake(rect.origin.x + (rect.size.width/2), rect.origin.y + rect.size.height+(rect.size.height/2) + (self.frame.size.height/2));//CGPointMake(rect.origin.x + (rect.size.width/2), rect.size.height + (self.frame.size.height));
			break;
			
		default:
			break;
	}
	
	
	[[[[UIApplication sharedApplication]delegate] window] addSubview:self];
	self.hidden = YES;
	NSLog(@"center %@",NSStringFromCGPoint(self.center));
	NSLog(@"self.frame %@",NSStringFromCGRect(self.frame));
	
	CGRect mainViewFrame = self.frame;	
	if (mainViewFrame.origin.x < 0) {
		self.frame = CGRectMake(0, mainViewFrame.origin.y, mainViewFrame.size.width, mainViewFrame.size.height);
		offset = -(rect.origin.x + (rect.size.width/2));
		[self setNeedsDisplay];
	} else if (CGRectGetMaxX(mainViewFrame) > 768) {
		self.frame = CGRectMake(768 - mainViewFrame.size.width, mainViewFrame.origin.y, mainViewFrame.size.width, mainViewFrame.size.height);
		offset = (rect.origin.x + (rect.size.width/2));
		[self setNeedsDisplay];
	}
	
	
	CATransition *transition = [CATransition animation];
	transition.duration = 1.f;
	transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	transition.type = kCATransitionReveal;
	[self.layer addAnimation:transition forKey:nil];
	self.hidden = NO;
}

-(void) dismissPopOver {
	CATransition *transition = [CATransition animation];
	transition.duration = 1.f;
	transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
	transition.type = kCATransitionFade;
	transition.subtype = nil;
	transition.delegate = self;
	[self.layer addAnimation:transition forKey:nil];
	self.hidden = YES;
}


#pragma mark UITouch for this View

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
//	NSLog(@"event");
}


#pragma mark Animation delegate Methods

-(void)animationDidStop:(CAAnimation *)theAnimation finished:(BOOL)flag {
	[self removeFromSuperview];
}

@end
