//
//  BanjoInstrument.m
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

#import "BanjoInstrument.h"

@implementation BanjoInstrument

@synthesize type;

//Customize the init for banjo
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        //name instrument
        [self setName: @"Banjo"];
        
        //Banjo Strings cost
        [self setStringsCostDollars:10];
        
        //set banjo type
        [self setType: BLUEGRASS];
        
        //reassign string number from base class based on the "type" property
        if (self.type == BLUEGRASS)
        {
            [self setStringsNumber: 5];
            
        } else if (self.type == TENOR)
        {
            [self setStringsNumber: 4];
        }
    }
    return self;
}


// overwrite the calculation method
-(int)calculateMaintenanceCost
{
    
    //Standard string & labor fee from base class
    int fee = [super calculateMaintenanceCost];
    
    //Add extra $5 charge for adjusting tension on the banjo's drum head)
    fee = fee + 5;
    
    return fee;
}

@end
