//
//  main.m
//  iPhone
//
//  Created by mac on 2/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tropolitan.h"


int main(int argc, char *argv[]) {
    
	//This is the location of your listing of editions
	const NSString *tropArchiveURL = [[NSString alloc] initWithString:@"http://www.stewonit.com/trop/troparchive.xml"];
	
	Tropolitan* trop = [Tropolitan instance];
	[trop update];
	
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    int retVal = UIApplicationMain(argc, argv, nil, nil);
    [pool release];
    return retVal;
}
