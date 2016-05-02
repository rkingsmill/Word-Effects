//
//  main.m
//  Word Effects
//
//  Created by Rosalyn Kingsmill on 2016-05-02.
//  Copyright © 2016 Rosalyn Kingsmill. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //repeat loop
        while (true) {
            
        // 255 unit long array of characters
        char inputChars[255];
            char inputNum[1];
        
        printf("Input a string: ");
        
        //limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        //print as a c string
        printf("Your string is %s\n", inputChars);
        
        //convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        //print NSString object
        NSLog (@"Input was: %@", inputString);
        
        //ask what they would like to do to their string
        printf("Choose from the following list:\n1. Change to uppercase\n2. Change to lowercase\n3. Change to an integer\n4. Make Canadian\n5. Get a response\n6. Replace spaces\n");
            
        //get input
        fgets(inputNum, 6, stdin);
        
        //Convert to NSString
        NSString *inputChoice = [NSString stringWithUTF8String:inputNum];
            
        //Uppercase
            if ([inputChoice isEqual: @"1"]){
            
        NSString *upperCased = [inputString uppercaseString];
        //print uppercase
        NSLog (@"Yelling: %@", upperCased);
                
            }
            
        //Lowercase
            if ([inputChoice isEqual: @"2"]){
        NSString *lowerCased = [inputString lowercaseString];
        //print lowercase
        NSLog (@"Lowercase: %@", lowerCased);
            }
        
        // change to integer
            if ([inputChoice isEqual: @"3"]){
        int x = [inputString intValue];
        NSLog (@"Value: %d", x);
    
            }
            
        //make canadian
            if ([inputChoice isEqual: @"4"]) {
        NSString *canadian = @"";
        canadian =[inputString stringByAppendingString:@"eh"];
        //print canadian
        NSLog (@"Canadian: %@", canadian);
            }
            
        //respond
            if ([inputChoice isEqual: @"5"]) {
        NSString *lastChar = [inputString substringFromIndex:[inputString length] - 1];
        
        if ([lastChar isEqual: @"!"]) {
            
            NSLog (@"Woah, calm down");
        }
        
        else if ([lastChar isEqual:@"?"]){
            NSLog (@"I don't know");
        }
            
            }
        
        //change spaces
            if ([inputChoice isEqual: @"6"]) {
        NSString *spaces = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        //print spaces
        NSLog (@"No spaces: %@", spaces);
            }
      

        
        } }
    return 0;
}
