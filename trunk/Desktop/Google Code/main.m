//
//  main.m
//  Trop
//
//  Created by HSJC Student Account on 3/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tropolitan.h"

int main(int argc, char *argv[]) {
    
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
    
	
	Tropolitan* trop = [Tropolitan instance];
	[trop update];	
	
	int retVal = UIApplicationMain(argc, argv, nil, nil);
	
	
	
    [pool release];
    return retVal;
}
