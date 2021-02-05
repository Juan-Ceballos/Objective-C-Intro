//
//  main.m
//  ObjC-Intro
//
//  Created by Juan Ceballos on 2/4/21.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int add(int num1, int num2) {
    return num1 + num2;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Hello, World!");
        NSString *languageTemp = @"Swift";
        NSLog(@"My favorite language is %@", languageTemp);
        
        int result = add(10, 12);
        // %i is a format specifier
        NSLog(@"The result of addition is %i.", result);
        
        // NSString an object that allocates memeory on the Heap
        // (a place (buffer) in memory)
        // NSString is a Class in Swift String is a Struct
        NSString *name = @"Juan";
        NSLog(@"My name is %@", name);
        
        NSMutableString *language = [[NSMutableString alloc] initWithString: @"The Language"];
        // calling an Objective-C function
        //[instance methodName];
        NSLog(@"message: %@", language);
        [language appendString:@" is Onjective-C."];
        
        NSLog(@"message: %@", language);
        
        // array, not type safe, can have ints, strings, etc
        NSArray *programmingStacks = @[@"Objective-C", @"Swift", @"Python", @"Java"];
        
        for (NSString *language in programmingStacks) {
            if ([language isEqual:@"Swift"]) {
                NSLog(@"Best language ever: %@", language);
            }
        }
        
        //swift
        //var pLanguage = "The Language";
        //pLanguage.append(" is Objective-C.");
        
        Person *eric = [[Person alloc] init];
        [eric info];
        
    }
    return 0;
}
