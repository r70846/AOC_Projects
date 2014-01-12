//
//  ViewController.m
//  rgaspardOne
//
//  Created by Russell Gaspard on 1/11/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    /*
     
     Russ Gaspard
     Project 1
     Mobile Development
     AOC2 1401
     
     */
    
    //Render labels to display data
    [self setupLabels];
    
    
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}


-(void)setupLabels
{
    self.view.backgroundColor = [UIColor grayColor];
    
    //SETUP LABELS TO DISPLAY INSTRUMENT MAINTENANCE DATA
    
    assignmentLabel = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 30.0f, 300.0f, 70.0f)];
    if (assignmentLabel != nil)
    {
        assignmentLabel.text = @"Russ Gaspard \nWeek One Project \nMobile Development AOC2 1401";
        assignmentLabel.textColor = [UIColor blackColor];
        assignmentLabel.backgroundColor = [UIColor whiteColor];
        assignmentLabel.textAlignment = NSTextAlignmentLeft;
        assignmentLabel.numberOfLines = 3;
        [self.view addSubview:assignmentLabel];
    }
    
    // 1. Instrument One Labels
    
    instrumentOneLabel = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 120.0f, 300.0f, 20.0f)];
    if (instrumentOneLabel != nil)
    {
        instrumentOneLabel.text = @"instrumentOneLabel";
        instrumentOneLabel.textColor = [UIColor redColor];
        instrumentOneLabel.backgroundColor = [UIColor whiteColor];
        instrumentOneLabel.textAlignment = NSTextAlignmentLeft;
        instrumentOneLabel.numberOfLines = 1;
        [self.view addSubview:instrumentOneLabel];
    }
    instrumentOneDetail = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 150.0f, 300.0f, 70.0f)];
    if (instrumentOneLabel != nil)
    {
        instrumentOneDetail.text = @"1instrumentOneDetail \n2instrumentOneDetail \n3iinstrumentOneDetail ";
        instrumentOneDetail.textColor = [UIColor blackColor];
        instrumentOneDetail.backgroundColor = [UIColor whiteColor];
        instrumentOneDetail.textAlignment = NSTextAlignmentLeft;
        instrumentOneDetail.numberOfLines = 3;
        [self.view addSubview:instrumentOneDetail];
    }
    
    // 2. Instrument Two Labels
    
    instrumentTwoLabel = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 240.0f, 300.0f, 20.0f)];
    if (instrumentOneLabel != nil)
    {
        instrumentTwoLabel.text = @"instrumentTwoLabel";
        instrumentTwoLabel.textColor = [UIColor redColor];
        instrumentTwoLabel.backgroundColor = [UIColor whiteColor];
        instrumentTwoLabel.textAlignment = NSTextAlignmentLeft;
        instrumentTwoLabel.numberOfLines = 1;
        [self.view addSubview:instrumentTwoLabel];
    }
    instrumentTwoDetail = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 270.0f, 300.0f, 70.0f)];
    if (instrumentTwoDetail != nil)
    {
        //instrumentTwoDetail.text = @"1instrumentTwoDetail \n2instrumentTwoDetail \n3iinstrumentTwoDetail ";
        instrumentTwoDetail.text = @"Now is the time for all good men to go to the aid of their country.";
        instrumentTwoDetail.textColor = [UIColor blackColor];
        instrumentTwoDetail.backgroundColor = [UIColor whiteColor];
        instrumentTwoDetail.textAlignment = NSTextAlignmentLeft;
        instrumentTwoDetail.numberOfLines = 3;
        [self.view addSubview:instrumentTwoDetail];
    }
    
    // 3. Instrument Three Labels
    
    instrumentThreeLabel = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 360.0f, 300.0f, 20.0f)];
    if (instrumentThreeLabel != nil)
    {
        instrumentThreeLabel.text = @"instrumentThreeLabel";
        instrumentThreeLabel.textColor = [UIColor redColor];
        instrumentThreeLabel.backgroundColor = [UIColor whiteColor];
        instrumentThreeLabel.textAlignment = NSTextAlignmentLeft;
        instrumentThreeLabel.numberOfLines = 1;
        [self.view addSubview:instrumentThreeLabel];
    }
    instrumentThreeDetail = [[UILabel alloc]initWithFrame:CGRectMake(10.0f, 390.0f, 300.0f, 70.0f)];
    if (instrumentThreeDetail != nil)
    {
        instrumentThreeDetail.text = @"instrumentThreeDetail \n2instrumentThreeDetail \n3iinstrumentThreeDetail ";
        instrumentThreeDetail.textColor = [UIColor blackColor];
        instrumentThreeDetail.backgroundColor = [UIColor whiteColor];
        instrumentThreeDetail.textAlignment = NSTextAlignmentLeft;
        instrumentThreeDetail.numberOfLines = 3;
        [self.view addSubview:instrumentThreeDetail];
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
