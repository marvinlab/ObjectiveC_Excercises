//
//  main.m
//  17. Stringz
//
//  Created by Marvin Labrador on 9/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
        //WRITING FILE
        
        /*NSMutableString *str = [[NSMutableString alloc] init];
        for(int i=0; i<10; i++){
            [str appendString:@"Marvin is cool!\n"];
        }
        
        NSError *error = nil;
        
        BOOL success = [str writeToFile:   @"/tmo/cool.txt"
             atomically:    YES
             encoding:      NSUTF8StringEncoding
             error:         NULL];
        
        if(success){
            NSLog(@"DONE WRITING /t,p/cool.txt");
        }else{
            NSLog(@"WRITING /t,p/cool.txt Failed : %@", [error localizedDescription]);
        }*/
        
        
        
        
        
        
        
        //READING FILE
        
        
         NSError *error = nil;
         NSString *str = [[NSString alloc] initWithContentsOfFile:   @"/etc/resov.conf"
                                          encoding:                 NSASCIIStringEncoding
                                          error:                    &error];
        
        
         if(!str){
         NSLog(@"read failed: %@", [error localizedDescription]);
         }else{
         NSLog(@"resolv.conf looks like this: \n%@", str);
         }
    }
    return 0;
}

