//
//  Deck.m
//  CardSizeGuess
//
//  Created by Jacky Wang on 7/17/14.
//  Copyright (c) 2014 JACKYWANG. All rights reserved.
//

#import "Deck.h"

@interface Deck()



@end

@implementation Deck

-(NSMutableArray*)cards
{
    if(!_cards) _cards=[[NSMutableArray alloc]init];
    return _cards;
}

-(void)addCard:(PlayingCard *)card
{
    [self.cards addObject:card];
}

-(PlayingCard*)drawRandomCard
{
    PlayingCard *newDrawnCard = nil;
    if([self.cards count])
    {
        unsigned index=arc4random()%[self.cards count];
        newDrawnCard=[self.cards objectAtIndex:index];
        [self.cards removeObjectAtIndex:index];
    }
    return newDrawnCard;    
}
@end
