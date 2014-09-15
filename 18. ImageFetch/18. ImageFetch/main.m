//
//  main.m
//  18. ImageFetch
//
//  Created by Marvin Labrador on 9/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //Writing File Using NSData
        
        /*NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL: url];
        NSError *error = nil;
        NSData *data = [NSURLConnection sendSynchronousRequest: request
                                        returningResponse:      NULL
                                        error:                  &error];
        
        if(!data){
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"The file is %lu bytes", [data length]);
        
        BOOL written = [data writeToFile:   @"/tmp/google.png"
                             options:       0
                             error:         &error];
        
        if(!written){
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"Success!");
         */
        
        
        
        
        //Reading File Using NSData
        
        NSURL *url = [NSURL URLWithString:@"http://www.google.com/images/logos/ps_logo2.png"];
        NSURLRequest *request = [NSURLRequest requestWithURL: url];
        NSError *error;
        
        NSData *data = [NSURLConnection sendSynchronousRequest:      request
                                             returningResponse:      NULL
                                                         error:      &error];

        if(!data){
            NSLog(@"fetch failed: %@", [error localizedDescription]);
            return 1;
        }
       
        NSLog(@"The file is %lu bytes", [data length]);
        
        BOOL written = [data writeToFile:   @"/tmp/google.png"
                                 options:   0
                                   error:   &error];
        
        if(!written){
            NSLog(@"write failed: %@", [error localizedDescription]);
            return 1;
        }
        
        NSLog(@"Success!");
        
        NSData *readData = [NSData dataWithContentsOfFile:@"/tmp/google.png"];
        NSLog(@"The file read from the disk has %lu bytes", [readData length]);
    }
    return 0;
}

