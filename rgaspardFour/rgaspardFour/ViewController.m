//
//  ViewController.m
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


#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize inputText;

- (void)viewDidLoad
{
    //Initialize event list
    eventList = [[NSMutableString alloc] init];
    
    //Create defaults built in dictionary
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    if(defaults != nil)
    {
        //Get stored list
        NSString *temp = [defaults objectForKey:@"list"];
        
        //Add loaded events to list and display
        [eventList appendString:temp];
        
        //Display List
        eventsDisplay.text = temp;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action: @selector(onRightSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabelRight addGestureRecognizer: rightSwiper];
    
    
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{


    [super viewDidAppear:animated];
}



-(IBAction)back:(UIStoryboardSegue*)segue
{
    
    //Add new event to list and display
    [eventList appendString:inputText];
    [eventList appendString:@"\n\n"];
     eventsDisplay.text = eventList;
    
    //NSLog(@"%@", inputText);
}


-(IBAction)onClick:(id)selector
{
    UIButton *button = (UIButton*)selector;
    if(button != nil)
    {
    	//Get tag from calling button
        int tag = button.tag;
        
   		//Get user defaults (Built in dictionary) to save or clear
   		NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
        
		if(defaults != nil) //Make sure we have defaults dictionary to save or clear
		{
            
        	if(tag == 0) //Clear defaults and display
        	{
 				NSString *tmp = @"";
				[defaults setObject:tmp forKey:@"list"];
                 eventsDisplay.text = tmp;
        	}
        	else if (tag == 1) //Save events in display list
        	{
	 			NSString *tmp = eventsDisplay.text;
				[defaults setObject:tmp forKey:@"list"];
        	}
        	
			//saves the data
			[defaults synchronize];
		}
	}
}


-(void)onRightSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        //NSLog(@"Right Swiped on home page!");
        
        [self performSegueWithIdentifier:@"AddEventSegue" sender:self];
    }
}

@end
