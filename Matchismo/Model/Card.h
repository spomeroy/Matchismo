//
//  Card.h
//  Matchismo
//
//  Created by Simon Pomeroy on 03/08/2013.
//  Copyright (c) 2013 Simon Pomeroy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic,getter = isFaceUp) BOOL faceUp;
@property (nonatomic, getter = isUnplayable) BOOL unPlayable;

- (int)match:(NSArray *) otherCards;

@end
