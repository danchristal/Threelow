//
//  Dice.m
//  Threelow
//
//  Created by Dan Christal on 2016-09-07.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)randomValue{
    self.value = [NSNumber numberWithInteger: (arc4random() % 6)+1];
}

-(NSString *)description{
    return [self.value stringValue];
}

@end


