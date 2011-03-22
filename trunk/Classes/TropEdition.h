//
//  TropEdition.h
//  iPhone
//
//  Created by mac on 3/7/11.
//  Copyright 2011 Troy University . All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Article.h"


@interface TropEdition : NSObject <NSXMLParserDelegate> {

	int issue;
	int volume;
	NSDate* date;
	NSMutableArray* articles;
	Article *temp;//We use a temp because NSXML is event driven and cant set all values at once
	NSMutableString *tempValue;//NSXML is weird, it causes events when each char is read so append each char as found
}

//Readonly because why would this ever change
@property(readonly) int issue;
@property(readonly) int volume;
@property(readonly) NSDate* date;
@property(readonly) NSMutableArray* articles;

//Takes the url of a tropedition containing file and parses for info 
-(TropEdition*) withURLFromString:(NSString*)urlString;//Tried using NSURL* as arg but errors :(


@end
