//
//  PlayingCard.h
//  Matchismo
//
//  Created by 胡啸晨 on 14/9/12.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
