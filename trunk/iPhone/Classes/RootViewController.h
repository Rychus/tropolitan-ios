//
//  RootViewController.h
//  iPhone
//
//  Created by mac on 2/10/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

//
//Blake's test
//

//
// Jay's Test
//

#import <UIKit/UIKit.h>

@interface RootViewController : UIViewController <UITableViewDelegate, UITableViewDataSource> {
	IBOutlet UITableView *myTableview; 
	NSMutableArray *listHeadlines;
}

@end
