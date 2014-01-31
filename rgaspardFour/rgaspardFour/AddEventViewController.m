//
//  AddEventViewController.m
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

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController
@synthesize inputField, picker;


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
    
    //Set my date picker minimum date to "Now"
    [picker setMinimumDate : [NSDate date]];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated
{
    
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action: @selector(onLeftSwipe:)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabelLeft addGestureRecognizer: leftSwiper];
    
    
    [super viewWillAppear:animated];
}

-(void)onLeftSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        NSLog(@"Left Swiped on event add page!");
    }
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //Create reference to main view controller
    ViewController *mainVC = [segue destinationViewController];
    
    //Create format for users date and time choice
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    if (dateFormatter != nil)
    {
        [dateFormatter setDateFormat:@"MMM dd, yyyy hh:mm:ss a"];
    }
    
    //Build the chosen date into a string based on my format
    NSString *dateTime = [[NSString alloc] initWithFormat:@"%@", [dateFormatter stringFromDate: picker.date]];
    
    
    //Fold the event text and formatted date string into a single text string & return to main view
    NSString *eventText = [[NSString alloc] initWithFormat:@"%@%@%@", inputField.text, @"\n", dateTime];
    
        mainVC.inputText = eventText;
}



-(IBAction)onClick:(id)sender
{
    UIButton *button = (UIButton*)sender;
    
    if(button != nil)
    {
        int tag = button.tag;
        
        if(tag == 0)
        {
            
        }
        else if (tag == 1) //If we close keyboard button

        {
            NSLog(@"Retract Keyboard");
            
            //Retract the keyboard
            [inputField resignFirstResponder];
        }
    }
}

@end
