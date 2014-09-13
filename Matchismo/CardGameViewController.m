//
//  CardGameViewController.m
//  Matchismo
//
//  Created by 胡啸晨 on 14/9/9.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import "CardGameViewController.h"
#import "PlayingCardDeck.h"

@interface CardGameViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipcount;
@property (strong,nonatomic) Deck *deck;

@end

@implementation CardGameViewController

-(Deck *)deck{
    if(!_deck) _deck = [self createDeck];
    return _deck;
}

-(Deck *)createDeck{
    return [[PlayingCardDeck alloc]init];
}

-(void)setFlipcount:(int)flipcount{
    _flipcount = flipcount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips:%d",self.flipcount];
    NSLog(@"Flips:%d",self.flipcount);
    
}

- (IBAction)touchCardButton:(UIButton *)sender {
    
    if ([sender.currentTitle length]) {
        
        [sender setBackgroundImage:[UIImage imageNamed:@"cardback"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"cardfront"]
                              forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipcount++;
        }
    }
    
}


@end
