//
//  ViolinInstrument.m
//  rgaspardOne
//
//  Created by Russell Gaspard on 1/11/14.
//  Copyright (c) 2014 Russell Gaspard. All rights reserved.
//

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
    
    //Standard labor fee from base class
    int fee = self.maintenenceFeeDollars;

    //Add extra $10 charge for restringing the bow)
        fee = fee + 20;

    //Add extra 5 dollar chanrge it its half size (harder to work with...)
    if (self.size == HALF)
    {
        fee = fee + 5;
    }
    
    return fee;
}


@end
