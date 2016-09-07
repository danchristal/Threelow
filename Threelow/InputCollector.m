//
//  InputCollector.m
//  Contact List
//
//  Created by Dan Christal on 2016-09-06.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(NSString *)inputForPrompt:(NSString *)promptString{

    char inputString[255];
    NSLog(@"%@", promptString);
    fgets(inputString, 255, stdin);
    
    return [[NSString stringWithUTF8String:inputString] stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
}

@end
