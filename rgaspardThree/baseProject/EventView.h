//
//  EventView.h
//  rgaspardThree
//
//  Created by Russell Gaspard on 1/23/14.
//  Copyright (c) 2014 FullSail. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol EventViewDelegate <NSObject>

//Message back to main view on close
@required
-(void)DidClose:(NSString*)eventString;

@end


@interface EventView : UIViewController
{
    NSDate *minDateTime;
    
    // Reference to the delegate
    id<EventViewDelegate> delegate;
    
    //Get access to text field
    IBOutlet UITextField *inputField;
    
    //Get access to date/time picker
    IBOutlet UIDatePicker *picker;
}






//Define function to catch button clicks on event view
-(IBAction)onClick:(id)sender;


//Declare as property to access delegate from outside
@property (strong) id<EventViewDelegate> delegate;

@end
