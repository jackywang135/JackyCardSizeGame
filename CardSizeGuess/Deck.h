//
//  Deck.h
//  CardSizeGuess
//
//  Created by Jacky Wang on 7/17/14.
//  Copyright (c) 2014 JACKYWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCard.h"

@interface Deck : NSObject

@property(nonatomic,strong)NSMutableArray *cards;
-(void)addCard:(PlayingCard*)card;
-(PlayingCard*)drawRandomCard;

@end
