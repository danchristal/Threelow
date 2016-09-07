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

@property NSArray *dice;
@property NSMutableSet *heldDice;

-(void)holdDie:(Dice *)die;
-(void)resetDice;

@end
