//
//  ViewController.m
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

#import "ViewController.h"
#import "EventView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onButtonClick:(id)sender{
    
    EventView *eventView = [[EventView alloc] initWithNibName:@"EventView" bundle:nil];
    if(eventView != nil)
    {
        //Let event view know this is the delegate
        eventView.delegate = self;
        
        //present event view
        [self presentViewController:eventView animated:true completion:nil];
    }
}

-(void)DidClose:(NSString*)eventString
{
    
    //Format the list in textView to add new event
    // Concat with prior event List, "New Event: " text, new event string from eventView, and then two newlines
    NSString *list = [[NSString alloc] initWithFormat:@"%@%@%@%@",eventList.text, @"New Event: ",eventString, @"\n\n"];
    
    eventList.text = list;
}

@end
