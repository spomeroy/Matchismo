//
//  Deck.m
//  Matchismo
//
//  Created by Simon Pomeroy on 03/08/2013.
//  Copyright (c) 2013 Simon Pomeroy. All rights reserved.
//

#import "Deck.h"

@interface Deck()
@property (strong, nonatomic) NSMutableArray *cards; //of Card

@end

@implementation Deck

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (void)addCard:(Card *)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (Card *)drawRandomCard
{
    Card *randomCard = nil;
    
    if (self.cards.count) {
        unsigned index = arc4random() % self.cards.count;
        NSLog(@"drawRandomCard - index = %d out of %d", index, self.cards.count);
        randomCard = self.cards[index];
        [self.cards removeObjectAtIndex:index];
        NSLog(@"%d cards remaining in deck", self.cards.count);
    }    
    return randomCard;
}

@end
