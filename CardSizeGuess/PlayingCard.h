//
//  PlayingCard.h
//  CardSizeGuess
//
//  Created by Jacky Wang on 7/17/14.
//  Copyright (c) 2014 JACKYWANG. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PlayingCard : NSObject 

@property(nonatomic)int rank;
@property(nonatomic)int suit;
@property(nonatomic,strong)UIImage *cardImage;


-(BOOL)compareSizeBiggerThan:(PlayingCard*)card2;
-(BOOL)compareSizeSmallerThan:(PlayingCard*)card2;

@end
