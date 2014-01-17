//
//  GuitarInstrument.h
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

#import "BaseInstrument.h"

@interface GuitarInstrument : BaseInstrument

//Define enum to record type of guitar strings
{
    int stringEnum;
}

typedef enum
{
    STEEL,
    NYLON

} stringEnum;



// Data member for which type of guitar strings
@property stringEnum stringType;

@end
