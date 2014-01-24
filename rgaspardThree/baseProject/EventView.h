//
//  EventView.h
//  rgaspardThree
//
//  Created by Russell Gaspard on 1/23/14.
//  Copyright (c) 2014 FullSail. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 3
 Mobile Development
 AOC2 1401
 
 */

#import <UIKit/UIKit.h>

@protocol EventViewDelegate <NSObject>

//Require this function to message back to main view on close
@required
-(void)DidClose:(NSString*)eventString;

@end


@interface EventView : UIViewController
{
    
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
