//
//  ViewController.m
//  rgaspardOne
//
//  Created by Russell Gaspard on 1/11/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 1
 Mobile Development
 AOC2 1401
 
 */

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{

    //Render labels to display data
    [self setupLabels];
    
    //GUITAR
    
    //Create a guitar
    GuitarInstrument *myGuitar = (GuitarInstrument*)[InstrumentFactory createNewInstrument:GUITAR];
    
    //set string type
    [myGuitar setStringType:NYLON];
    
    //Calculate maintenance fee
    int fee = [myGuitar calculateMaintenanceCost];
    
    //output Guitar data to labels
    instrumentOneLabel.text = [NSString stringWithFormat:@"%@ : Maintenance Fee $%d", myGuitar.name, fee];
    if(myGuitar.stringType == NYLON)
    {
        instrumentOneDetail.text = [NSString stringWithFormat:@"Includes nylon strings at %d dollars", myGuitar.stringsCostDollars];
    }
    else
    {
        instrumentOneDetail.text = [NSString stringWithFormat:@"Includes steel strings at %d dollars", myGuitar.stringsCostDollars];;
    }
    

    
    //VIOLIN
    
    //Create a violin
    ViolinInstrument *myViolin = (ViolinInstrument*)[InstrumentFactory createNewInstrument:VIOLIN];
    
    //set string type
    [myViolin setSize:FULL];
    
    //Calculate maintenance fee
    fee = [myViolin calculateMaintenanceCost];
    
    //output Violin data to labels
    instrumentTwoLabel.text = [NSString stringWithFormat:@"%@ : Maintenance Fee $%d", myViolin.name, fee];
    if(myViolin.size == FULL)
    {
        instrumentTwoDetail.text = [NSString stringWithFormat:@"Includes full size bow rehair and strings at %d dollars", myViolin.stringsCostDollars];
    }
    else
    {
        instrumentTwoDetail.text = [NSString stringWithFormat:@"Includes small size bow rehair and strings at %d dollars", myViolin.stringsCostDollars];
    }
    
    
    //BANJO
    
    //Create a bajo
    BanjoInstrument *myBanjo = (BanjoInstrument*)[InstrumentFactory createNewInstrument:BANJO];
    
    //set banjo type
    [myBanjo setType:TENOR];
    
    //Calculate maintenance fee
    fee = [myBanjo calculateMaintenanceCost];
    
    //output banjo data to labels
    instrumentThreeLabel.text = [NSString stringWithFormat:@"%@ : Maintenance Fee $%d", myBanjo.name, fee];
    
    if(myBanjo.type == TENOR)
    {
        instrumentThreeDetail.text = [NSString stringWithFormat:@"Includes tenor banjo strings at %d dollars", myBanjo.stringsCostDollars];
        
    }
    else
    {
        instrumentThreeDetail.text = [NSString stringWithFormat:@"Includes bluegrass banjo strings at %d dollars", myBanjo.stringsCostDollars];
    }

    
    
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
    if (instrumentOneDetail != nil)
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
