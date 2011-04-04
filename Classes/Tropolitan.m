//
//  Tropolitan.m
//  iPhone
//
//  Created by HSJC Student Account on 3/1/11.
//  Copyright 2011 Troy University . All rights reserved.
//
// This class contains all the information about the Tropolitan
// available to us including editions and articles for the selected edition

//See http://developer.apple.com/library/mac/#documentation/Cocoa/Conceptual/CocoaFundamentals/CocoaObjects/CocoaObjects.html 
// For information on singleton classes


#import "Tropolitan.h"
#import "Article.h"

@implementation Tropolitan

@synthesize current;
@synthesize editions;

static Tropolitan *sharedTropolitan = nil;//shared instance


struct EditionInfo //basic edition information
{
	NSDate *date;
	int issue;
	int volume;
};

-(void) setEdition: (NSInteger)iss: (NSInteger)vol
{
	if(iss == nil || vol == nil)//Probably sent on startup which means just choose most recent
		current = [editions objectAtIndex:0];
		
	for (TropEdition *ed in [Tropolitan instance].editions)
	{
		if(iss == ed.issue && ed.volume == vol)
			NSLog(@"Found the selected edition");
		
	}
}


+ (Tropolitan*)instance
{
    if (sharedTropolitan == nil) {
        sharedTropolitan = [[super allocWithZone:NULL] init];
    }
    return sharedTropolitan;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [[self instance] retain];
}

+ (id)copyWithZone:(NSZone *)zone
{
    return self;
}

- (id)retain
{
    return self;
}

- (NSUInteger)retainCount
{
    return NSUIntegerMax;  //denotes an object that cannot be released
}

- (void)release
{
    //do nothing
}

- (id)autorelease
{
    return self;
}

/*	FUNCTIONAL METHODS */


//This gets a list of editions
-(void)update
{
	//Clear edition list and reinit
	[editions release];
	editions = [NSMutableArray arrayWithCapacity:10];
	
	//Get list and parse
	NSLog(@"Getting List of Editions");
	NSURL *url = [NSURL URLWithString:@"http://www.stewonit.com/trop/troparchive.xml"];
	
	NSXMLParser* parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	parser.delegate = self;
	[parser parse]; //start the parsing
	[parser release]; //done with parser so get rid of it
	[url release];
	
	NSLog(@"Found: %i Editions", [editions count ]);
	
	if([editions count] > 0)
		current = [editions objectAtIndex:0];
	
}

/* Edition Parsing Functions */

//Found new element
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
	
	if([elementName isEqualToString:@"troparchive"] == true)
	{
		NSLog(@"Found a Trop Archive Listing");
		filePath = [[NSMutableString alloc] initWithString:[attributeDict objectForKey:@"path"]];

	}
	//If we find a tropedition listing create a new TropEdition with url of entry
	else if([elementName isEqualToString:@"tropedition"] == true)
	{
		NSLog(@"Found Trop Edition Listing");
		NSMutableString *editionPath = [[NSMutableString alloc] initWithString: filePath];
		NSLog(@"URL: %@",editionPath);
		[editionPath appendString:[attributeDict valueForKey:@"filename"]];
		[editions addObject:[[TropEdition alloc] withURLFromString:editionPath]];
		
	}
	
	
}


@end
