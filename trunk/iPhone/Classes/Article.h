//
//  Article.h
//  iPhone
//
//  Created by mac on 2/27/11.
//  Copyright 2011 Troy University . All rights reserved.
//

#import <UIKit/UIKit.h>


@interface Article : NSObject
{
	NSString *title;
	NSString *byline;
	NSString *bylineTitle;
	NSString *body;
	NSString *blurb;
}

- (void)getTitle;
- (void)getByline;
- (void)getBylineTitle;
- (void)getBody;
- (void)getBlurb;

@end