//
//  ArticleViewController.h
//  Trop
//
//  Created by mac on 3/27/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ArticleViewController : UIViewController {
	
	IBOutlet UITextView *body;
	IBOutlet UILabel *headline;
	IBOutlet UILabel *byline;

}

@property(nonatomic,retain) UITextView *body;
@property(nonatomic,retain) UILabel *headline;
@property(nonatomic,retain) UILabel *byline;

-(void) setArticle:(NSString *)headline;

@end
