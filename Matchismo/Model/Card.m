//
//  Card.m
//  Matchismo
//
//  Created by 胡啸晨 on 14/9/11.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import "Card.h"

@implementation Card

-(int)match:(NSArray *)otherCards{
    int score = 0;
    
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}


@end
