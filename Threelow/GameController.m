//
//  GameController.m
//  Threelow
//
//  Created by Dan Christal on 2016-09-07.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "GameController.h"

@interface GameController()
@property (nonatomic) NSInteger score;
@property (nonatomic) NSUInteger rolls;
@property (nonatomic, strong) NSDictionary *diceImages;

@end

@implementation GameController

-(NSDictionary *)diceImages{
    if(!_diceImages)
       _diceImages = [[NSDictionary alloc] init];
    
    _diceImages = @{
                    @"1":@"⚀",
                    @"2":@"⚁",
                    @"3":@"⚂",
                    @"4":@"⚃",
                    @"5":@"⚄",
                    @"6":@"⚅"
                    };
    
    return _diceImages;
    
}

-(NSArray *)validDiceInput{
    
    if(!_validDiceInput)
        _validDiceInput = [[NSArray alloc]init];

    _validDiceInput = @[@"0", @"1", @"2", @"3", @"4"];
    
    return _validDiceInput;
}

-(void)holdDie:(Dice *)die{
    if([self.heldDice containsObject:die]){
        [self.heldDice removeObject:die];
        if([die.value integerValue] != 3)
            self.score -= [die.value integerValue];
    }
    else{
        [self.heldDice addObject:die];
        if([die.value integerValue] != 3)
            self.score += [die.value integerValue];
    }
}

-(void)resetDice{
    [self.heldDice removeAllObjects];
    self.score = 0;
}

-(void)rollDice{
    for (Dice *dice in self.dice) {
        if(![self.heldDice containsObject:dice])
            [dice randomValue];
    }

    if (self.rolls > 0)
        self.score -=2;
    self.rolls +=1;
}

-(void)printGame{
    for(int i=0; i < self.dice.count; i++){
        if([self.heldDice containsObject:self.dice[i]]){
            //NSLog(@"[Die %d]: %@",i, self.dice[i]);
            NSLog(@"[Die %d]: %@",i, [self.diceImages valueForKey:[self.dice[i] description]]);
        }
        else
            NSLog(@"Die %d: %@",i, [self.diceImages valueForKey:[self.dice[i] description]]);
    }
    
    NSLog(@"Score: %zd", self.score);
    NSLog(@"Rolls: %tu", self.rolls);


}


@end
