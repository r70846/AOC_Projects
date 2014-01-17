//
//  GuitarInstrument.m
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

#import "GuitarInstrument.h"

@implementation GuitarInstrument

@synthesize stringType;

//Customize the init for guitar
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        
        //name instrument
        [self setName: @"Guitar"];
        
        //Guitar Strings cost
        [self setStringsCostDollars:5];
        
        //steel strings as the default
        [self setStringType: STEEL];
        
        //reset string number from base class
        [self setStringsNumber: 6];
        
    }
    return self;
}


// overwrite the calculation method
-(int)calculateMaintenanceCost
{
    //Standard string & labor fee from base class
    int fee = [super calculateMaintenanceCost];
    
    //Add extra 15 dollar chanrge to stretch NYLON strings (extra labor...)
    if (self.stringType == NYLON)
    {
        fee = fee + 15;
    }
    
    NSLog(@"Maintenance Fee for guitar: %d", fee);
    return fee;
}



@end
