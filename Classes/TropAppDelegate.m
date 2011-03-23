//
//  TropAppDelegate.m
//  Trop
//
//  Created by HSJC Student Account on 3/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "TropAppDelegate.h"
#import "RootViewController.h"


@implementation TropAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	//create a view  for the banner logo add the banner to this view
	UIImageView *logoImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"banner.png"]];
	
	// put this banner above the nav bar ---> -30 as Y point means put it in the -30 Y-axis of the parent view --> which will be the tabbarcontroller.view.
	UIView *bannerLogoView = [[UIView alloc] initWithFrame:CGRectMake(0,-30, 320, 50)];
	[bannerLogoView addSubview:logoImage];
	[logoImage release];
	
	//add the tabcotroller as a subview of the view
	[navigationController.view addSubview:bannerLogoView];
	[bannerLogoView release];
	//Move the root view to show status bar & banner
	navigationController.view.frame = CGRectMake(0,50, 320, 430);
	
	//add the modified logo view to window
	[self.window addSubview:navigationController.view];
	[self.window makeKeyAndVisible];
	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

