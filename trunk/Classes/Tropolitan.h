//
//  Tropolitan.h
//  iPhone
//
//  Created by HSJC Student Account on 3/1/11.
//  Copyright 2011 Troy University . All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TropEdition.h"

@interface Tropolitan : NSObject <NSXMLParserDelegate>{
	
	NSMutableArray *editions;//Available Editions
	TropEdition *current;
	NSString *filePath;//URL path of edition xml files
	
}

@property(readonly, nonatomic, retain) NSMutableArray *editions;
@property(readonly,nonatomic, retain) TropEdition *current;

//Singleton Related:
+(Tropolitan*)instance;//reference the Trop instance
+(id)allocWithZone:(NSZone *)zone;
+(id)copyWithZone:(NSZone *)zone;
-(NSUInteger)retainCount;
-(void)release;
-(id)autorelease;

//Functional methods
-(void) update;//Gets list of editions and sets current to most recent if current nil
-(void) setEdition: (NSInteger)iss: (NSInteger)ed;


@end
