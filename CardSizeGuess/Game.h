//
//  Game.h
//  CardSizeGuess
//
//  Created by Jacky Wang on 7/17/14.
//  Copyright (c) 2014 JACKYWANG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

//@protocol cardScore <NSObject>

//-(void)cardScore;

//@end

@interface Game : NSObject

//scoring
@property(nonatomic,readwrite)int score;
@property(nonatomic)BOOL answer;


//@property (nonatomic,weak) id<cardScore> delegate;

@property(nonatomic, strong)PlayingCardDeck *gamePlayingCardDeck;
@property(nonatomic, strong)PlayingCard *gamePlayingCardOnTable;
@property(nonatomic, strong)PlayingCard *gameNextCard;


-(void)startGame;
-(void)drawCard;
-(void)compareIfSizeBigger;
-(void)compareIfSizeSmaller;
-(void)updateScore;





@end
