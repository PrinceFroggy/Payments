//
//  InputHandler.m
//  Payments
//
//  Created by Andrew Solesa on 2017-03-11.
//  Copyright © 2017 KSG. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"

@implementation InputHandler


- (NSString *) ConvertInput
{
    char inputChars[255];
    
    fgets(inputChars, 255, stdin);
    
    NSString *input = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    NSString *trimmedInput = [input stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return trimmedInput;
}

- (NSInteger) ConvertInputToInteger
{
    char inputChars[255];
    
    fgets(inputChars, 255, stdin);
    
    NSInteger input = [[NSString stringWithUTF8String:inputChars]integerValue];
    
    return input;
}

@end
