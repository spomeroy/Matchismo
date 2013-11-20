//
//  PlayingCard.h
//  Matchismo
//
//  Created by Simon Pomeroy on 03/08/2013.
//  Copyright (c) 2013 Simon Pomeroy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property  (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
