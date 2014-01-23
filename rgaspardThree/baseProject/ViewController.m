//
//  ViewController.m
//  baseProject
//
//  Created on 9/4/13.
//  Copyright (c) 2013 FullSail. All rights reserved.
//

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
        
        //eventView.delegate = self; //Let event view know this is the delegate
        
        [self presentViewController:eventView animated:true completion:nil]; //present event view
    }
}

@end
