//
//  EditionsViewController.h
//  Trop
//
//  Created by mac on 3/23/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Tropolitan.h"
#import "RootViewController.h"

@interface EditionsViewController : UITableViewController {

	NSMutableArray *editionsList;
}

@property (nonatomic, retain) IBOutlet NSMutableArray *editionsList;

@end
