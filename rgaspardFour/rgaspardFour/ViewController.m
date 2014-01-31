//
//  ViewController.m
//  rgaspardFour
//
//  Created by Russell Gaspard on 1/30/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

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

- (void)viewWillAppear:(BOOL)animated
{

    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action: @selector(onRightSwipe:)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabelRight addGestureRecognizer: rightSwiper];
    
    
    [super viewWillAppear:animated];
}


-(IBAction)onClick:(id)selector
{
    
    
}

-(void)onRightSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        NSLog(@"Right Swiped on home page!");
    }
}

@end
