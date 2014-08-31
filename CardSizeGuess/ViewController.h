//
//  ViewController.h
//  CardSizeGuess
//
//  Created by Jacky Wang on 7/17/14.
//  Copyright (c) 2014 JACKYWANG. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Game.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *PlayingCardOnTable;
//@property (weak, nonatomic) IBOutlet UIButton *Bigger, *Smaller;

@property (nonatomic, strong)Game *VCgame;

@property (nonatomic, strong)UISwipeGestureRecognizer *swipeUp, *swipeDown;

@property (strong, nonatomic) IBOutlet UIImageView *score1;
@property (strong, nonatomic) IBOutlet UIImageView *score2;
@property (strong, nonatomic) IBOutlet UIImageView *score3;

@property (strong, nonatomic) IBOutlet UILabel *message;

@end
