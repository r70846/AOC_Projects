//
//  ViolinInstrument.m
//  rgaspardOne
//
//  Created by Russell Gaspard on 1/11/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//
/*
 
 Russ Gaspard
 Project 2
 Mobile Development
 AOC2 1401
 
 */

#import "ViolinInstrument.h"

@implementation ViolinInstrument


@synthesize size;


//Customize the init for violin
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        
        //name instrument
        [self setName: @"Violin"];
        
        //Violin Strings cost
        [self setStringsCostDollars:25];
        
        //full size as the default
        [self setSize: FULL];
        
        //reset string number from base class
        [self setStringsNumber: 4];
        
    }
    return self;
}

// overwrite the calculation method
-(int)calculateMaintenanceCost
{
    
    //Standard string & labor fee from base class
    int fee = [super calculateMaintenanceCost];

    //Add extra $10 charge to rehair the bow)
        fee = fee + 20;

    //Add extra 5 dollar chanrge it its half size (harder to work with...)
    if (self.size == HALF)
    {
        fee = fee + 5;
    }
    
    return fee;
}


@end
