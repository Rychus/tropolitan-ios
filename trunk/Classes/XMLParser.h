//XMLParser.h
//
#import <Foundation/Foundation.h>
#import <Foundation/NSString.h>
#import "Article.h"

@interface XMLParser : NSObject {
	 
	
	NSString * xmlData; //The Final XML String
	NSMutableData *xmlRaw;//Raw data from the connection
	
	id currentObj; //Used to reference current article while parsing
	
	
}

- (void) parseEditionList; //Get list of available editions
- (void) parseEdition; //Get one edition and fill data

- (void) getEditions;//Connect to Trop and get List of Editions
 

//Get a TropEdition By Release Date
-(void) getEditionByDate: (NSDate*) issueDate;

@end