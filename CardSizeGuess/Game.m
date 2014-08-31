//
//  Game.m
//  CardSizeGuess
//
//  Created by Jacky Wang on 7/17/14.
//  Copyright (c) 2014 JACKYWANG. All rights reserved.
//

#import "Game.h"

@interface Game()

//@property(nonatomic,readwrite)int score;
@end

@implementation Game
//@synthesize gamePlayingCardOnTable, gameNextCard,gamePlayingCardDeck;

/*
-(void)cardScore
{
    [self.delegate cardScore];
}
*/

-(PlayingCardDeck*)gamePlayingCardDeck
{
    if(!_gamePlayingCardDeck) _gamePlayingCardDeck = [[PlayingCardDeck alloc]initWithCards];
    return _gamePlayingCardDeck;
}

-(PlayingCard*)gamePlayingCardOnTable
{
    if(!_gamePlayingCardOnTable) _gamePlayingCardOnTable = [[PlayingCard alloc]init];
    return _gamePlayingCardOnTable;
}

-(void)startGame
{
    self.gamePlayingCardOnTable=[self.gamePlayingCardDeck drawRandomCard];
    
}

-(void)drawCard
{
    if(self.gamePlayingCardDeck.cards.count==0)
    {
    self.gamePlayingCardDeck=[[PlayingCardDeck alloc]initWithCards];
    }
    
    self.gameNextCard=[self.gamePlayingCardDeck drawRandomCard];
    
}

-(void)compareIfSizeBigger
{
    self.answer=[self.gameNextCard compareSizeBiggerThan:self.gamePlayingCardOnTable];
}

-(void)compareIfSizeSmaller
{
    self.answer=[self.gameNextCard compareSizeSmallerThan:self.gamePlayingCardOnTable];
}

-(void)updateScore
{
    if (self.answer==YES)
    {
        self.score++;
        if(self.score==3)
        {
            [self win];
        }
    }
    else
    {
        self.score=0;
        [self lose];
    }
    [self replaceCard];
}

-(void)win
{
   
}

-(void)lose
{
    
}

-(void)replaceCard
{
    self.gamePlayingCardOnTable=self.gameNextCard;
}

@end
