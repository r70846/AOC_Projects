//
//  InstrumentFactory.h
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
#import "BaseInstrument.h"
#import "GuitarInstrument.h"
#import "ViolinInstrument.h"
#import "BanjoInstrument.h"

@interface InstrumentFactory : NSObject

+(BaseInstrument *)createNewInstrument: (int)instrumentType;



@end
