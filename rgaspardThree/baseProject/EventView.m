//
//  EventView.m
//  rgaspardThree
//
//  Created by Russell Gaspard on 1/23/14.
//  Copyright (c) 2014 FullSail. All rights reserved.
//

#import "EventView.h"

@interface EventView ()

@end

@implementation EventView

@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        delegate = nil;
        // Custom initialization
    }
    return self;
}


- (void)viewWillAppear:(BOOL)animated
{
    
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Set my date picker minimum date to "Now"
    [picker setMinimumDate : [NSDate date]];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    
    if(button != nil)
    {
        int tag = button.tag;
        
        if(tag == 0) //If we have the save button..
        {
            //Do some minimal data validation
            if([inputField.text isEqualToString:@""])
            {

            }
            else
            {
                //Format the users date and time choice
                NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
                if (dateFormatter != nil)
                {
                    [dateFormatter setDateFormat:@"MMM dd, yyyy hh:mm:ss a"];
                }
            
                //Build the chosen date into a string based on my format
                NSString *dateTime = [[NSString alloc] initWithFormat:@"%@", [dateFormatter stringFromDate: picker.date]];
            
                NSString *eventText = [[NSString alloc] initWithFormat:@"%@%@%@", inputField.text, @"\n", dateTime];
           
                if(delegate != nil)
                {
                
                    [delegate DidClose: eventText];
                    //[delegate DidClose: inputField.text];
                
                }

            }
            
            //Dismiss the event view
            [self dismissViewControllerAnimated:true completion:nil];
            
        }
        else if(tag == 1) //If we have the close keyboard button..
        {
            //Retract the keyboard
            [inputField resignFirstResponder];
        }
    }
}


@end
