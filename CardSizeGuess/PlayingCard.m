//
//  PlayingCard.m
//  CardSizeGuess
//
//  Created by Jacky Wang on 7/17/14.
//  Copyright (c) 2014 JACKYWANG. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(BOOL)compareSizeBiggerThan:(PlayingCard *)card2
{
    BOOL result;
    
    if(self.rank>card2.rank)
    {result=YES;}
    else if (self.rank<card2.rank)
    {result=NO;}
    else if (self.rank==card2.rank)
    {
        if(self.suit>card2.suit)
            result=YES;
        else result=NO;
    }
    return result;
}

-(BOOL)compareSizeSmallerThan:(PlayingCard*)card2;
{
    BOOL result;
    result=[self compareSizeBiggerThan:card2];
    return !result; //inverting it 
}


@end
