//
//  main.m
//  Threelow
//
//  Created by Dan Christal on 2016-09-07.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputCollector.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];


        
        InputCollector *inputCollector = [[InputCollector alloc] init];
        NSString *userInput;
        do{
            userInput = [inputCollector inputForPrompt:@"Welcome to Threelow, let's Play.\nType roll to play\nQuit to exit."];
            [userInput lowercaseString];
            
            if([userInput isEqualToString:@"roll"]){
                [d1 randomValue];
                [d2 randomValue];
                [d3 randomValue];
                [d4 randomValue];
                [d5 randomValue];
                
                
                NSLog(@"Dice 1 value: %@", d1.value);
                NSLog(@"Dice 2 value: %@", d2.value);
                NSLog(@"Dice 3 value: %@", d3.value);
                NSLog(@"Dice 4 value: %@", d4.value);
                NSLog(@"Dice 5 value: %@", d5.value);
            }
            
            
            
        }while(![userInput isEqualToString:@"quit"]);
        
        
               
    return 0;
    }
}
