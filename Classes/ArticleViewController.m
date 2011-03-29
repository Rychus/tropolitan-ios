//
//  ArticleViewController.m
//  Trop
//
//  Created by mac on 3/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "ArticleViewController.h"
#import "Article.h"
#import "Tropolitan.h"


@implementation ArticleViewController
@synthesize body;

-(void) setArticle:(NSString *)headline
{
	bool found = false;
	NSLog(@"Setting Article");
	body.text = [body.text stringByAppendingString:@"setArticle"];
	
	for (Article *art in [Tropolitan instance].current.articles)
	{
		if(art.headline == headline)
		{
			found = true;
			body.text = art.body;
			
			break;
		}               
	}
	
	if(!found)
	{
		NSLog(@"Failed to locate article");
	}
	 

}

// The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
/*
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization.
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	
	[super viewDidLoad];
	
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations.
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
	
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
	[body release];
	[headline release];
	[byline release];
}


@end
