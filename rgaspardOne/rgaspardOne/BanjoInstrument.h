//
//  BanjoInstrument.h
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

@interface BanjoInstrument : BaseInstrument

//Define enum to record type of banjo
{
    int typeEnum;
}

typedef enum
{
    TENOR,
    BLUEGRASS,
    
} typeEnum;


// data memebr to record what size violin
@property int type;


@end
