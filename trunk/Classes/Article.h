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
	NSMutableString *headline;
	NSMutableString *byline;//author
	NSMutableString *bylineTitle;//author job title
	NSMutableString *body;
	NSMutableString *category;
}

@property(nonatomic, retain) NSMutableString *headline;
@property(nonatomic, retain) NSMutableString *byline;
@property(nonatomic, retain) NSMutableString *bylineTitle;
@property(nonatomic, retain) NSMutableString *body;
@property(nonatomic, retain) NSMutableString *category;
@end