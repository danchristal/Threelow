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
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Dice *d1 = [[Dice alloc] init];
        Dice *d2 = [[Dice alloc] init];
        Dice *d3 = [[Dice alloc] init];
        Dice *d4 = [[Dice alloc] init];
        Dice *d5 = [[Dice alloc] init];
        
        GameController *threelow = [[GameController alloc] init];
        
        threelow.dice = [[NSArray alloc] initWithObjects:d1, d2, d3, d4, d5, nil];
        threelow.heldDice = [[NSMutableSet alloc] init];
        
        InputCollector *threelowInputCollector = [[InputCollector alloc] init];
        NSString *userInput;
        
        do{
            userInput = [threelowInputCollector inputForPrompt:@"Welcome to Threelow, let's Play.\nType roll to play\nQuit to exit."];
            [userInput lowercaseString];
            
            if([userInput isEqualToString:@"roll"]){
                
                for (Dice* dice in threelow.dice) {
                    [dice randomValue];
                }
                
                do{
                    
                    [threelow print];
                    
                    userInput = [threelowInputCollector inputForPrompt:@"Enter die number to hold, reset to remove all holds,q to finish holding"];
                    [userInput lowercaseString];
                    if([userInput isEqualToString:@"reset"])
                        [threelow resetDice];
                    else
                        [threelow holdDie:threelow.dice[[userInput integerValue]]];
                    
                  //  NSLog(@"Held set: %@", threelow.heldDice);
                    
                }while (![userInput isEqualToString:@"q"]);
                
                
            }
            
        }while(![userInput isEqualToString:@"quit"]);
        
        
        
        return 0;
    }
}
