//
//  GameController.m
//  Threelow
//
//  Created by Dan Christal on 2016-09-07.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "GameController.h"

@implementation GameController

-(void)holdDie:(Dice *)die{
    if([self.heldDice containsObject:die])
        [self.heldDice removeObject:die];
    else
        [self.heldDice addObject:die];
}

-(void)resetDice{
    [self.heldDice removeAllObjects];
}

@end
