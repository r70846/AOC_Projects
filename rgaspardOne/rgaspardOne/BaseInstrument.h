//
//  BaseInstrument.h
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

#import <Foundation/Foundation.h>

@interface BaseInstrument : NSObject
{
    int instrumentEnum;
}

typedef enum
{
    GUITAR,
    VIOLIN,
    BANJO
} instrumentEnum;

// data members for number of string, cost of strings, and restring fee
@property NSString *name;
@property int stringsNumber;
@property int stringsCostDollars;

// initialize
-(id)init;

// calculation manipulation method
-(int)calculateMaintenanceCost;

@end
