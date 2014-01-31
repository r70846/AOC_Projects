//
//  AddEventViewController.m
//  rgaspardFour
//
//  Created by Russell Gaspard on 1/30/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "AddEventViewController.h"

@interface AddEventViewController ()

@end

@implementation AddEventViewController

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

@end
