//
//  Card.m
//  Matchismo
//
//  Created by Simon Pomeroy on 03/08/2013.
//  Copyright (c) 2013 Simon Pomeroy. All rights reserved.
//

#import "Card.h"

@interface Card()

@end

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    
    return score;
}


@end
