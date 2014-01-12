//
//  BaseInstrument.m
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

#import "BaseInstrument.h"

@implementation BaseInstrument

// use sythesize to create get and set properties
@synthesize name, stringsNumber,stringsCostDollars, maintenenceFeeDollars;

-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setName:nil];
        [self setStringsNumber:1];
        [self setStringsCostDollars:0];
        [self setMaintenenceFeeDollars: [self calculateMaintenanceCost]];
    }
    return self;
}


// Determine Maintenance Cost, materials and labor
// (calculation manipulation method)
-(int)calculateMaintenanceCost
{
    //Standard labor fee to restring an instrument will be 2 dollars per string, plus the cost of the strings
    int fee = (2 * stringsNumber) + stringsCostDollars;
    
    //Log result
    NSLog(@"Maintenance Fee: %d", fee);
    
    return fee;
}

@end
