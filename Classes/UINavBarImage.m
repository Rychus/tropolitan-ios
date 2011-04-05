//
//  UINavBarImage.m
//  Trop
//
//  Created by HSJC Student Account on 3/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "UINavBarImage.h"


static NSMutableDictionary *navigationBarImages = NULL;

@implementation UINavigationBar(CustomImage)
//Overrider to draw a custom image

+ (void)initImageDictionary
{
    if(navigationBarImages==NULL){
        navigationBarImages=[[NSMutableDictionary alloc] init];
    }   
}

- (void)drawRect:(CGRect)rect {
	
    UIImage *image = [UIImage imageNamed: @"banner.png"];
	
    [image drawInRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
	
}

//Allow the setting of an image for the navigation bar
- (void)setImage:(UIImage*)image
{
    [navigationBarImages setObject:image forKey:[NSValue valueWithNonretainedObject: self]];
}
@end
