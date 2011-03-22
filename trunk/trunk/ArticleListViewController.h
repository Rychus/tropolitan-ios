//
//  ArticleListView.h
//  Trop
//
//  Created by HSJC Student Account on 3/21/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ArticleListViewController : UITableViewController {
	
	NSString *sectionTitle;//the section we want to see articles for

}

- (void) setSection: (NSString*)title;

@end
