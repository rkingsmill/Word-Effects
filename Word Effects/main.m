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
  
        // 255 unit long array of characters
        char inputChars[255];
        
        printf("Input a string: ");
        
        //limit input to max 255 characters
        fgets(inputChars, 255, stdin);
        
        //print as a c string
        printf("Your string is %s\n", inputChars);
        
        //convert char array to an NSString object
        NSString *inputString = [NSString stringWithUTF8String:inputChars];
        
        //print NSString object
        NSLog (@"Input was: %@", inputString);
        
        //Uppercase
        NSString *upperCased = [inputString uppercaseString];
        //print uppercase
        NSLog (@"Yelling: %@", upperCased);
  
        //Lowercase
        NSString *lowerCased = [inputString lowercaseString];
        //print lowercase
        NSLog (@"Lowercase: %@", lowerCased);
        
        
        // change to integer
        int x = [inputString intValue];
        NSLog (@"Value: %d", x);
    
       
        //make canadian
        NSString *canadian = @"";
        canadian =[inputString stringByAppendingString:@"eh"];
        //print canadian
        NSLog (@"Canadian: %@", canadian);
        
        //respond
        
        //change spaces
        NSString *spaces = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
        //print spaces
        NSLog (@"No spaces: %@", spaces);

      

        
    }
    return 0;
}
