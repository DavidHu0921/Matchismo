//
//  PlayingCard.m
//  Matchismo
//
//  Created by 胡啸晨 on 14/9/12.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard

-(NSString *)contents{
    
    NSArray *rankStrings = [PlayingCard rankString];
    return [rankStrings[self.rank] stringByAppendingString:self.suit];
}

@synthesize suit = _suit;

+(NSArray *)validSuits{
    return @[@"♥",@"♦",@"♠",@"♣"];
}

- (void)setSuit:(NSString *)suit{
    if ([[PlayingCard validSuits] containsObject:suit]){
        _suit = suit;
    }
}
         
- (NSString *)suit
{
    return _suit ? _suit : @"?";
}
         
+(NSArray *)rankString{
    return @[@"?",@"A",@"2",@"3",@"4",@"5",
             @"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
}

+(NSInteger)maxRank{
    return [[self rankString]count]-1;
}

-(void)setRank:(NSUInteger)rank{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

@end
