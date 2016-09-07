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
    if([self.heldDice containsObject:die]){
        [self.heldDice removeObject:die];
        self.score -= [die.value integerValue];
    }
    else{
        [self.heldDice addObject:die];
        self.score += [die.value integerValue];
    }
}

-(void)resetDice{
    [self.heldDice removeAllObjects];
}

-(void)print{
    for(int i=0; i < self.dice.count; i++){
        if([self.heldDice containsObject:self.dice[i]])
            NSLog(@"[Die %d]: %@",i, self.dice[i]);
        else
            NSLog(@"Die %d: %@",i, self.dice[i]);
    }
    NSLog(@"Score: %tu", self.score);

}


@end
