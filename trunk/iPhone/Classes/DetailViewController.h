//
//  DetailViewController.h
//  iPhone
//
//  Created by mac on 2/27/11.
//  Copyright 2011 Troy University . All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController {  
		
		IBOutlet UILabel *myLabel;	
		NSString *article;  
		
	}  
	
	@property (nonatomic, retain) IBOutlet UILabel *myLabel;  
	@property (nonatomic, retain) NSString *article;  
	
	@end  

