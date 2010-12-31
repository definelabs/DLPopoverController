//
//  CustomPopOverViewController.m
//  CustomPopOver
//
//  Created by Parag Dulam on 28/12/10.
//  Copyright Define Labs 2010. All rights reserved.
//

#import "CustomPopOverViewController.h"
#import "CustumPopOverView.h"
#import "TableViewController.h"
#import "SampleViewController.h"


@implementation CustomPopOverViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
	
}


-(IBAction) popOverButtonAction:(UIButton *) sender {
//	CustumPopOverView * pop = [[CustumPopOverView alloc] initWithFrame:CGRectMake(20, 20, 280, 420)];

	
	TableViewController * tableViewController = [[TableViewController alloc] initWithStyle:UITableViewStylePlain];
	SampleViewController * sampleViewController = [[SampleViewController alloc] initWithNibName:@"SampleViewController" 
																						 bundle:nil];
	tableViewController.view.frame = CGRectMake(0, 0, 320, 400);
	CustumPopOverView * pop = [[CustumPopOverView alloc] initWithContentViewController:tableViewController 
																	  WithPopOverColor:[UIColor yellowColor] 
																			WithOffset:0
																  WithPopOverDirection:CustomPopOverViewDirectionDown];
	
	
//	UIPopoverController * popo = [[UIPopoverController alloc] initWithContentViewController:tableViewController];
//	[popo presentPopoverFromRect:sender.frame 
//						  inView:sender.superview 
//		permittedArrowDirections:UIPopoverArrowDirectionRight 
//						animated:YES];
	
	
	[tableViewController release];
	[sampleViewController release];
	
//	NSArray * colorsArray = [NSArray arrayWithObjects:(id)[[UIColor colorWithRed:(CGFloat)(41.f/255.f) green:(CGFloat)(101.f/255.f) blue:(CGFloat)(251.f/255.f) alpha:1] CGColor], 
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],
//					   (id)[[UIColor colorWithRed:(CGFloat)(13.f/255.f) green:(CGFloat)(40.f/255.f) blue:(CGFloat)(111.f/255.f) alpha:1.0] CGColor],nil];
//	
//	pop.gradientColorsArray = colorsArray;
	
	[pop presentPopOverFromRect:sender.frame];
	
//	[self.view addSubview:pop];
	[pop release];
}


// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    return YES;
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
