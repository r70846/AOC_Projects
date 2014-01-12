//
//  InstrumentFactory.m
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

#import "InstrumentFactory.h"

@implementation InstrumentFactory

+(BaseInstrument *)createNewInstrument: (int)instrumentType
{
    // if guitar is requested make a guitar
    if (instrumentType == GUITAR)
    {
        return [[GuitarInstrument alloc] init];
    // if violin is requested make a violin
    } else if (instrumentType == VIOLIN)
    {
        return [[ViolinInstrument alloc] init];
    // if banjo is requested make a banjo
    } else if (instrumentType == BANJO)
    {
        return [[BanjoInstrument alloc] init];
    }
    
    
    
    //need to do one more for project credit
    else return nil;
}

@end
