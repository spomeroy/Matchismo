//
//  Deck.h
//  Matchismo
//
//  Created by Simon Pomeroy on 03/08/2013.
//  Copyright (c) 2013 Simon Pomeroy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard:(Card *)card atTop:(BOOL)atTop;

- (Card *)drawRandomCard;

@end
