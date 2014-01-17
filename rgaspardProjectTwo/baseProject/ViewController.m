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
#import "InfoView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];


    
    
    // Set up UI
    self.view.backgroundColor = [UIColor colorWithRed:0.827 green:0.827 blue:0.827 alpha:1]; /*#d3d3d3 gray*/
    calculateBtn.enabled = false;
    stepperControl.value = 1;
    
    // Initialize variables
    plural = @"";
    chosen = @"Choose Instrument";     //'user propt' is instrument variable...
    quantity = stepperControl.value;

    // diplay propt in results field
    results.text = [NSString stringWithFormat:@"%d %@%@", quantity, chosen, plural];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


// This function adds the "S" when appropriate
-(void)pluralFix
{
    if(quantity == 1)
    {
        plural = @"";
    }else
    {
        plural = @"s";
    }
    
}


// This functions controlls the stepper
-(IBAction)onStep:(id)sender
{
    UIStepper *stepControl = (UIStepper*)sender;
    
    if(stepControl != nil)
    {
        quantity = stepControl.value;
        [self pluralFix];
        results.text = [NSString stringWithFormat:@"%d %@%@", quantity, chosen, plural];
    }
    
    
}


//This function reacts to any button push
-(IBAction)onClick:(id)sender
{
    UIButton *btn = (UIButton*)sender;
    if(btn != nil)
    {
        int tag = btn.tag;
        
        
        if(tag == 0) //Calculate Button - calculate & Display the Fee Now
        {
            
            int totalFee = quantity * feePerInstrument;
            results.text = [NSString stringWithFormat:@"%d %@%@ : $%d", quantity, chosen, plural, totalFee];
        }else
        {
            if(tag == 1) //Guitar Chosen
            {
                //Record Choice
                chosen = @"Guitar";
            
                //Create a guitar
                GuitarInstrument *instrument = (GuitarInstrument*)[InstrumentFactory createNewInstrument:GUITAR];
            
                //set string type
                [instrument setStringType:NYLON];
            
                //Arrange Button States
                button1.enabled = false;
                button2.enabled = true;
                calculateBtn.enabled = true;
            
                //Calculate fee for signle instrument behind the scenes
                feePerInstrument = [instrument calculateMaintenanceCost];
            
            }else if(tag == 2) //Violin Chosen
            {
            
                //Record Choice
                chosen = @"Violin";
            
                //Create a violin
                ViolinInstrument *instrument = (ViolinInstrument*)[InstrumentFactory createNewInstrument:VIOLIN];
            
                //set string type
                [instrument setSize:FULL];
            
                //Arrange Button States
                button1.enabled = true;
                button2.enabled = false;
                button3.enabled = true;
                calculateBtn.enabled = true;
            
                //Calculate fee for signle instrument behind the scenes
                feePerInstrument = [instrument calculateMaintenanceCost];
            
            }else if(tag == 3) //Banjo Chosen
            {
            
                //Record Choice
                chosen = @"Banjo";
            
                //Create a banjo
                BanjoInstrument *instrument = (BanjoInstrument*)[InstrumentFactory createNewInstrument:BANJO];
            
                //set banjo type
                [instrument setType:TENOR];
            
                //Arrange Button States
                button1.enabled = true;
                button2.enabled = true;
                button3.enabled = false;
                calculateBtn.enabled = true;
            
                //Calculate fee for signle instrument behind the scenes
                feePerInstrument = [instrument calculateMaintenanceCost];
            }
        
            //Display quantity and instrument but not calculation yet...
            results.text = [NSString stringWithFormat:@"%d %@%@", quantity, chosen, plural];
        }
    }
}

// This function accepts input form the segmented control and changes the background color
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
            self.view.backgroundColor = [UIColor colorWithRed:0.827 green:0.827 blue:0.827 alpha:1]; /*#d3d3d3 gray*/
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


-(IBAction)onNav:(id)sender
{
    InfoView *infoView = [[InfoView alloc] initWithNibName:@"InfoView" bundle:nil];
    if(infoView != nil)
    {
        [self presentViewController:infoView animated:true completion:nil];
    }
}
@end
