//
//  TropEdition.m
//  
//
//  Created by mac on 3/7/11.
//  Copyright 2011 Troy University . All rights reserved.
//

// This class contains basic information about a 
// Tropolitan Edition. 

//See header file for documentation

#import "TropEdition.h"


@implementation TropEdition

@synthesize issue;
@synthesize volume;
@synthesize date;
@synthesize articles;


-(TropEdition*) withURLFromString:(NSString*)urlString
{
	//Clear out list of articles and reinit
	[articles release];
	articles = [NSMutableArray arrayWithCapacity:20];
	
	//Parse tropedition xml file
	NSLog(@"Preparing Edition..");
	NSURL *url = [NSURL URLWithString:urlString];
	NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	parser.delegate = self;
	[parser parse];
	[parser release];
	[urlString release];
	[url release];
	
	return self;
}

//Parsing Delegate Functions

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
	tempValue = nil;//Stop tracking any old value
	tempValue = [[NSMutableString alloc] init];//Prepare new value string
	
	//grab edition information
	if([elementName isEqualToString:@"tropedition"] == true)
	{
		issue = (int)[attributeDict valueForKey:@"issue"];
		volume = (int)[attributeDict valueForKey:@"volume"];
		//get date info here
	}
	//This is what we are mainly looking for, articles
	else if([elementName isEqualToString:@"article"] == true)
	{
		temp = [Article alloc];
	}
	//The following all add attributes to the temp article
	else if([elementName isEqualToString:@"headline"] == true)
	{
		[temp.headline release];//drop the old value
		temp.headline = tempValue;
	}
	else if([elementName isEqualToString:@"byline"] == true)
	{
		[temp.byline release];//drop the old value
		temp.byline = tempValue;
	}
	else if([elementName isEqualToString:@"bylineTitle"] == true)
	{
		[temp.bylineTitle release];//drop the old value
		temp.bylineTitle = tempValue;
	}
	else if([elementName isEqualToString:@"body"] == true)
	{
		[temp.body release];//drop the old value
		temp.body = tempValue;
	}
	else if([elementName isEqualToString:@"section"] == true)
	{
		[temp.section release];//drop the old value
		temp.section = tempValue;
	}
	
	
}

//NSXMLParser is weird, now we must keep track of node value char by char...
-(void)parser:(NSXMLParser *)parser foundCharacters:(NSString *)string{
	
	[tempValue appendString:(NSMutableString*)string ];//append char data to target string
	//NSLog(@"Added Value: %@",tempValue);
}

//Reached End of Element
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
 namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
	if([elementName isEqualToString:@"article"] == true)
	{
		[articles addObject:temp];//add article to array now that finished
		temp = nil;//clear old pointer
	}
	if([elementName isEqualToString:@"tropedition"] == true)
	{
		NSLog(@"Finished Parsing Edition. Found %i articles",[articles count]);
		for(Article *art in articles)
			NSLog(@"Headline: %@",art.headline);
	}
}


@end
