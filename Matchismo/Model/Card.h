//
//  Card.h
//  Matchismo
//
//  Created by 胡啸晨 on 14/9/11.
//  Copyright (c) 2014年 com.example. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong,nonatomic) NSString *contents;
@property (nonatomic,getter = isChosen) BOOL chosen;
@property (nonatomic,getter = isMatched) BOOL matched;

@end
