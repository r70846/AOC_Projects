//
//  AddEventViewController.h
//  rgaspardFour
//
//  Created by Russell Gaspard on 1/30/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 4
 Mobile Development
 AOC2 1401
 
 */

#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface AddEventViewController : UIViewController
{
    
    
    IBOutlet UITextField *inputField;
    IBOutlet UIDatePicker *picker;

    IBOutlet UILabel *swipeLabelLeft;
    
    //Gesture Recognizer
    UISwipeGestureRecognizer *leftSwiper;
}

//Define function to catch button clicks on event view
-(IBAction)onClick:(id)sender;

@end
