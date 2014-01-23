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
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
            //Dismiss the event view
            [self dismissViewControllerAnimated:true completion:nil];
            
            if(delegate != nil)
            {
                [delegate DidClose: inputField.text];
            }
        }
        else if(tag == 1)
        {
            //Retract the keyboard
            [inputField resignFirstResponder];
        }
    }
}

@end
