//
//  ViewController.h
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
#import "AddEventViewController.h"


@interface ViewController : UIViewController
{
    
    IBOutlet UITextView *eventsDisplay;
    
    IBOutlet UILabel *swipeLabelRight;
    
    //Gesture Recognizer
    UISwipeGestureRecognizer *rightSwiper;
    
    
    NSMutableString* eventList;
}

@property NSString *inputText;


//Reference to my method for button click
-(IBAction)onClick:(id)selector;


//Segue to get back from Add Event View
-(IBAction)back:(UIStoryboardSegue*)segue;



@end
