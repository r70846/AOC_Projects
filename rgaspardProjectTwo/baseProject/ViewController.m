//
//  ViewController.m
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

#import "ViewController.h"

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

-(IBAction)onStep:(id)sender
{
    UIStepper *stepControl = (UIStepper*)sender;
    
    if(stepControl != nil)
    {
        quantity = stepControl.value;
        results.text = [NSString stringWithFormat:@"Step value=%d", quantity];
    }
    
    
}

-(IBAction)onClick:(id)sender
{
    UIButton *btn = (UIButton*)sender;
    if(btn != nil)
    {
        int tag = btn.tag;
        if(tag == 0)
        {
			button1.enabled = false;
            button2.enabled = true;
            button3.enabled = true;
        }else if(tag == 1)
        {
			button1.enabled = true;
            button2.enabled = false;
            button3.enabled = true;
        }else if(tag == 2)
        {
			button1.enabled = true;
            button2.enabled = true;
            button3.enabled = false;
        }else
        {
        	//do nothing
        }

        
    }
}

-(IBAction)onSegmentChange:(id)sender
{
    UISegmentedControl *segControl = (UISegmentedControl*)sender;
    if(segControl != nil)
    {
        int selectedIndex = segControl.selectedSegmentIndex;
        NSString *seg = [NSString stringWithFormat:@"Selected index %d", selectedIndex];
        NSLog(@"%@", seg);
        
        if(selectedIndex == 0)
        {
			self.view.backgroundColor = [UIColor grayColor];
        }else if(selectedIndex == 1)
        {
			self.view.backgroundColor = [UIColor colorWithRed:0.6 green:0.8 blue:1 alpha:1]; /*#99ccff Sky Blue */;
        }else if(selectedIndex == 2)
        {
			self.view.backgroundColor = [UIColor colorWithRed:0.6 green:1 blue:0.6 alpha:1]; /*#99ff99 Green */
        }else if(selectedIndex == 3)
        {
			self.view.backgroundColor = [UIColor colorWithRed:1 green:0.8 blue:0.6 alpha:1]; /*#ffcc99 Gold */
        }else
        {
        	//do nothing
        }
    }
}
@end
