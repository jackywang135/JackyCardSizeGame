//
//  ViewController.m
//  CardSizeGuess
//
//  Created by Jacky Wang on 7/17/14.
//  Copyright (c) 2014 JACKYWANG. All rights reserved.
//

#import "ViewController.h"

//#import "PlayingCardDeck.h"


@interface ViewController () //<cardScore>

@end

@implementation ViewController
/*
-(void)cardScore:(Game *)sender
{
    self.VCgame.score
}
*/
@synthesize score1,score2,score3;


-(Game *)VCgame
{
    if(!_VCgame) _VCgame=[[Game alloc]init];
    return _VCgame;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.VCgame startGame];
    [self updateUI];
    [self setUpGestureRecognizers];
    [self loadUpImageViews];
    self.PlayingCardOnTable.userInteractionEnabled=YES;
}

-(void)loadUpImageViews
{
    [self.score1 setImage: [UIImage imageNamed:@"checkmark"]];
    [self.score2 setImage: [UIImage imageNamed:@"checkmark"]];
    [self.score3 setImage: [UIImage imageNamed:@"checkmark"]];
    [self.view addSubview:self.score1];
    [self.view addSubview:self.score2];
    [self.view addSubview:self.score3];
    self.score1.hidden=YES;
    self.score2.hidden=YES;
    self.score3.hidden=YES;
    
}

-(void)setUpGestureRecognizers
{
    self.swipeDown=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeDown:)];
    self.swipeUp=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(swipeUp:)];
    [self.swipeDown setDirection:UISwipeGestureRecognizerDirectionDown];
    [self.swipeUp setDirection:UISwipeGestureRecognizerDirectionUp];
    [self.PlayingCardOnTable addGestureRecognizer:self.swipeUp];
    [self.PlayingCardOnTable addGestureRecognizer:self.swipeDown];
}

-(void)swipeDown:(UIGestureRecognizer*)sender
{
    [self.VCgame drawCard];
    [self.VCgame compareIfSizeSmaller];
    [self.VCgame updateScore];
    
    [UIView transitionWithView:self.PlayingCardOnTable
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromBottom
                    animations:^{self.PlayingCardOnTable=self.PlayingCardOnTable;}
                    completion:nil];
    [self updateUI];
}

-(void)swipeUp:(UIGestureRecognizer*)sender
{
    [self.VCgame drawCard];
    [self.VCgame compareIfSizeBigger];
    [self.VCgame updateScore];
    
    [UIView transitionWithView:self.PlayingCardOnTable
                      duration:0.5
                       options:UIViewAnimationOptionTransitionFlipFromTop
                    animations:^{self.PlayingCardOnTable=self.PlayingCardOnTable;}
                    completion:nil];
    [self updateUI];
}

/*
-(IBAction)Bigger:(UIButton*)sender
{
    [self.VCgame drawCard];
    [self.VCgame compareIfSizeBigger];
    [self.VCgame updateScore];
    [self updateUI];
}

-(IBAction)Smaller:(UIButton*)sender
{
    [self.VCgame drawCard];
    [self.VCgame compareIfSizeSmaller];
    [self.VCgame updateScore];
    [self updateUI];
}
 */

-(void)updateUI
{
    [self.PlayingCardOnTable setImage:self.VCgame.gamePlayingCardOnTable.cardImage];
    [self updateScore];
    
    
}

-(void)updateScore
{
    switch (self.VCgame.score)
    {
    case 1:
            self.score1.hidden=NO;
            self.score2.hidden=YES;
            self.score3.hidden=YES;
            [self messageBeforeWin];
            break;
    case 2:
            self.score1.hidden=NO;
            self.score2.hidden=NO;
            self.score3.hidden=YES;
            [self messageBeforeWin];
            break;
    case 3:
            self.score1.hidden=NO;
            self.score2.hidden=NO;
            self.score3.hidden=NO;
            [self messageWin];
            self.VCgame.score=0;
            
            break;
    
    default:
            self.score1.hidden=YES;
            self.score2.hidden=YES;
            self.score3.hidden=YES;
            [self messageBeforeWin];
    break;
    }
}
-(void)messageBeforeWin
{
    self.message.attributedText=[[NSAttributedString alloc]initWithString:@"Guess 3 in a row correct to win"
                                                               attributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:50],NSForegroundColorAttributeName:[UIColor whiteColor]}];;
    self.message.adjustsFontSizeToFitWidth=YES;
}

-(void)messageWin
{
    self.message.attributedText=[[NSAttributedString alloc]initWithString:@"🎊🎉 YOU WIN! 🎊🎉"
                                                               attributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:50],NSForegroundColorAttributeName:[UIColor redColor]}];;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
