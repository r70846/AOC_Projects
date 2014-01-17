//
//  ViewController.h
//  baseProject
//
//  Created on 9/4/13.
//  Copyright (c) 2013 FullSail. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 2
 Mobile Development
 AOC2 1401
 
 */

#import <UIKit/UIKit.h>
#import "InstrumentFactory.h"

@interface ViewController : UIViewController
{
    
    
IBOutlet UITextField *results;
    
IBOutlet UIStepper *stepperControl;
    
    
IBOutlet UIButton *button1;
IBOutlet UIButton *button2;
IBOutlet UIButton *button3;
    
IBOutlet UISegmentedControl *segmentControl;
    
int quantity;
    
    
}

-(IBAction)onStep:(id)sender;
-(IBAction)onClick:(id)sender;
-(IBAction)onSegmentChange:(id)sender;


@end
