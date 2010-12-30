//
//  CustomPopOverAppDelegate.h
//  CustomPopOver
//
//  Created by Parag Dulam on 28/12/10.
//  Copyright Define Labs 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CustomPopOverViewController;

@interface CustomPopOverAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    CustomPopOverViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet CustomPopOverViewController *viewController;

@end

