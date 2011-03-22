//
//  ArticleViewController.h
//  Trop
//
//  Created by mac on 3/22/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ArticleViewController : UIViewController {

	NSString *articleTitle;
	NSString *body;
	UITextView *myView;
}

@property(nonatomic, retain)IBOutlet NSString *body;
@property(nonatomic, retain)IBOutlet UITextView *myView;

- (void) setArticle: (NSString*)title;

@end
