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
        
        
  
    }
    return 0;
}
