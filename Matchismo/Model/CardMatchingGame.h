//
//  CardMatchingGame.h
//  Matchismo
//
//  Created by 胡啸晨 on 14/9/13.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

-(instancetype)initWithCardCount:(NSInteger)count
                        usignDeck:(Deck *)deck;

-(void)chooseCardAtIndex:(NSInteger) index;
-(Card *)cardAtIndex:(NSInteger)index;


@property (nonatomic,readonly)NSInteger score;



@end
