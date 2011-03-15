//
//  main.m
//  Tropolitan-IOS
//
//  Created by HSJC Student Account on 3/15/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tropolitan.h"

int main(int argc, char *argv[]) {
    
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    
	//This is the location of your listing of editions
	const NSString *tropArchiveURL = [[NSString alloc] initWithString:@"http://www.stewonit.com/trop/troparchive.xml"];
	
	Tropolitan* trop = [Tropolitan instance];
	[trop update];
	
    
    [pool release];
    return retVal;
}
