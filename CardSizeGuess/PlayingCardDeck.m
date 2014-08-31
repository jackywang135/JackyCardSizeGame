//
//  PlayingCardDeck.m
//  CardSizeGuess
//
//  Created by Jacky Wang on 7/17/14.
//  Copyright (c) 2014 JACKYWANG. All rights reserved.
//

#import "PlayingCardDeck.h"

@implementation PlayingCardDeck

-(instancetype)initWithCards
{
    self=[super init];
    if(self)
    {
        for(int rank=1;rank<=13;rank++)
            for(int suit=1;suit<=4;suit++)
            {
                PlayingCard *newCreatedCard=[[PlayingCard alloc]init];
                newCreatedCard.rank=rank;
                newCreatedCard.suit=suit;
                newCreatedCard.cardImage=[UIImage imageNamed:[NSString stringWithFormat:@"%i%i",rank+1,suit]];
                [self addCard:newCreatedCard];
            }
    }
    return self;
}



@end
