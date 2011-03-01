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

@property(nonatomic, retain) IBOutlet NSString *title;
@property(nonatomic, retain) IBOutlet NSString *byline;
@property(nonatomic, retain) IBOutlet NSString *bylineTitle;
@property(nonatomic, retain) IBOutlet NSString *body;
@property(nonatomic, retain) IBOutlet NSString *blurb;

@end