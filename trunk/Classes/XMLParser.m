//xmlParser.C

#import "XMLParser.h"


@implementation XMLParser


-(void) getEditionByDate:(NSDate *)issueDate
{
	
}

//This gets the XML file and fills the xml string into the xmlData var
-(void) getEditions
{
	//URL IS HARDCODED HERE
	NSURL *url = [NSURL URLWithString:@"http://stewonit.com/trop/troparchive.xml"];
	
	NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	parser.delegate = self;
	[parser parse]; //start the parsing
	[parser release]; //done with parser so get rid of it
	
	
}



//this needs to take blank array list
//parses the xmldata for a list of Trop Editions
-(void) parseEditionList
{
	//URL IS HARDCODED HERE
	NSURL *url = [NSURL URLWithString:@"http://www.stewonit.com/trop/test.xml"];
	//iOS SDK built in engine
	NSXMLParser *parser = [[NSXMLParser alloc] initWithContentsOfURL:url];
	parser.delegate = self;
	[parser parse]; //start the parsin
	[parser release]; //done with parser so get rid of it
	
}

//parses xmlData into list of articles
-(void) parseEdition: (Article *) articles
{
	
	
}


/* 
 The following methods are delegats from the NSURLConnection Class 
 */	

//Initial response from the server for connection	
-(void)connection:(NSURLConnection *)connection
didReceiveResponse:(NSURLResponse *)response
{
	[xmlRaw setLength:0];
	NSLog(@"Before");
	xmlData = [[NSString alloc] initWithData:xmlRaw encoding:NSASCIIStringEncoding];
	NSLog(xmlData);

}

//As we receive data tack it on to the data for this connection
-(void)connection:(NSURLConnection *)connection
   didReceiveData:(NSData *)data
{
	//Log Incoming Data
	NSLog(@"Appending Data");
	
	[xmlRaw appendData:data]; //call func append on obj receivedData with param data
}

-(void)connectionDidFinishLoading:(NSURLConnection *)connection
{
	NSLog(@"Finished Loading Data:");
	xmlData = [[NSString alloc] initWithData:xmlRaw encoding:NSASCIIStringEncoding];
	NSLog(@"XML: %@",xmlData);
	NSLog(@"After");
	NSLog(xmlRaw);
	[connection release]; //done with connection 
}


// 	NSXML Parsing Delegate Functions /

//Found new element
- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName 
  namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
	//Log the name of item found
	NSLog(@"Found XML Tag:%@",elementName);
	
	/*
	//If parsing articles
	if(CurrentParseMode = parseMode.ARTICLES)
	{
		if([elementName isEqualToString:@"article"])
			//start new article object
			else if(attr name)//add attr to object
				currentObj.name = name.value
				
				}
	
	//Parse List of editions
	else if(CurrentParseMode = parseMode.EDITIONS)
	{
		
	}*/
}

//Reached End of Element
-(void)parser:(NSXMLParser *)parser didEndElement:(NSString *)elementName
 namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName
{
	//Log the name of item found
	NSLog(@"Found XML Closing Tag:%@",elementName);
	
	/*
	//If parsing articles
	if(CurrentParseMode = parseMode.ARTICLES)
	{
		if([elementName isEqualToString:@"article"])
			//add currentObj to array and set currentObj to null
			}
	
	//Parse List of editions
	else if(CurrentParseMode = parseMode.EDITIONS)
	{
		
	}*/
	
}


 

@end