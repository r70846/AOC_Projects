//
//  ViewController.h
//  baseProject
//
//  Created on 9/4/13.
//  Copyright (c) 2013 FullSail. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 3
 Mobile Development
 AOC2 1401
 
 */

#import <UIKit/UIKit.h>
#import "EventView.h"

@interface ViewController : UIViewController <EventViewDelegate>
{
    //Get access to text view to list events
    IBOutlet UITextView *eventList;
}


//Define function to catch button click on main view
-(IBAction)onButtonClick:(id)sender;

@end
