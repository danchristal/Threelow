//
//  GameController.h
//  Threelow
//
//  Created by Dan Christal on 2016-09-07.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic, strong) NSArray *dice;
@property (nonatomic, strong) NSMutableSet *heldDice;
@property (nonatomic, strong) NSArray *validDiceInput;




-(void)holdDie:(Dice *)die;
-(void)rollDice;
-(void)resetDice;
-(void)printGame;


@end
