//
//  InfoView.m
//  rgaspardProjectTwo
//
//  Created by Russell Gaspard on 1/16/14.
//  Copyright (c) 2014 FullSail. All rights reserved.
//

#import "InfoView.h"

@interface InfoView ()

@end

@implementation InfoView

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

-(IBAction)onClose:(id)sender
{
    //Save settings here
    
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
