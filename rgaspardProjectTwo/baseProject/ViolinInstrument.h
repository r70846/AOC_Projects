//
//  ViolinInstrument.h
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

@interface ViolinInstrument : BaseInstrument

//Define enum to record size of violin
{
    int sizeEnum;
}

typedef enum
{
    FULL,
    THREE_QUARTER,
    HALF
    
} sizeEnum;

// data memebr to record what size violin
@property sizeEnum size;


@end
