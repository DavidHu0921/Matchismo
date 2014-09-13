//
//  Deck.h
//  Matchismo
//
//  Created by 胡啸晨 on 14/9/11.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;
- (Card *)drawRandomCard;

@end
