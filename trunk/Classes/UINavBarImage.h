//
//  UINavBarImage.h
//  Trop
//
//  Created by HSJC Student Account on 3/29/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface UINavigationBar(CustomImage)
+ (void) initImageDictionary;
- (void) drawRect:(CGRect)rect;
- (void) setImage:(UIImage*)image;
@end
