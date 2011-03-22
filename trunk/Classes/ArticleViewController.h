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
}

@property(nonatomic, retain)IBOutlet NSString *body;

- (void) setArticle: (NSString*)title;

@end
