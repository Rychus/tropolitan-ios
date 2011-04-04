//
//  AboutView.h
//  Trop
//
//  Created by HSJC Student Account on 4/4/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface AboutView : UIViewController {

	IBOutlet NSString *about;
	IBOutlet UITextView *myView;
}

@property (nonatomic, retain) IBOutlet NSString *about;
@property (nonatomic, retain) IBOutlet UITextView *myView;

@end
