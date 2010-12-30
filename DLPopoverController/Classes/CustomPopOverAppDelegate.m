//
//  CustomPopOverAppDelegate.m
//  CustomPopOver
//
//  Created by Parag Dulam on 28/12/10.
//  Copyright Define Labs 2010. All rights reserved.
//

#import "CustomPopOverAppDelegate.h"
#import "CustomPopOverViewController.h"

@implementation CustomPopOverAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
