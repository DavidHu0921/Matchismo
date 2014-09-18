//
//  CardMatchingGame.m
//  Matchismo
//
//  Created by 胡啸晨 on 14/9/13.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import "CardMatchingGame.h"
#import "Card.m"

@interface CardMatchingGame()

@property (nonatomic,readwrite)NSInteger score;
@property (nonatomic,strong) NSMutableArray *cards;

@end

@implementation CardMatchingGame

-(NSMutableArray *)cards{
    if (!_cards) _cards = [[NSMutableArray alloc]init];
    return _cards;
}

-(instancetype)initWithCardCount:(NSInteger)count usignDeck:(Deck *)deck{
    
    self = [super init];
    
    if (self) {
        for (int i = 0; i < count; i++) {
            Card *card = [deck drawRandomCard];
            self.cards[i] = card;
            if (card) {
                [self.cards addObject:card];
            }else{
                self = nil;
                break;
            }
        }
    }
    return self;
}


#define Mismatch 2 
#define MatchBonus 4
#define cost 1

-(void)chooseCardAtIndex:(NSInteger)index{
    Card *card = [self cardAtIndex:index];
    
    if (!card.isMatched) {
        if (card.isChosen) {
            card.chosen = NO;
        }else{
            for (Card *otherCard in self.cards) {
                if (otherCard.isChosen && !otherCard.isMatched) {
                    int matchSroce = [card match : @[otherCard]];
                    if (matchSroce) {
                        self.score += matchSroce = MatchBonus;
                        card.matched = YES;
                        otherCard.matched = YES;
                        
                    }else{
                        self.score -= Mismatch;
                        otherCard.matched = NO;
                        
                    }
                    break;
                }
               
            }
            self.score -= cost;
            card.chosen = YES;
        }
    }
}

-(Card *)cardAtIndex:(NSInteger)index{
    
    
    return (index < [self.cards count]) ? self.cards[index] : nil;
}

-(instancetype)init{
    return nil;
}

@end
