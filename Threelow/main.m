//
//  main.m
//  Threelow
//
//  Created by Dan Christal on 2016-09-07.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];

        [d1 randomValue];
        [d2 randomValue];
        [d3 randomValue];
        [d4 randomValue];
        [d5 randomValue];
        
        
        NSLog(@"Dice 1 value: %@", d1.value);
        NSLog(@"Dice 1 value: %@", d2.value);
        NSLog(@"Dice 1 value: %@", d3.value);
        NSLog(@"Dice 1 value: %@", d4.value);
        NSLog(@"Dice 1 value: %@", d5.value);
        
        
    }
    return 0;
}
