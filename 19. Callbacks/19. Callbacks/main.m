//
//  main.m
//  19. Callbacks
//
//  Created by Marvin Labrador on 9/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Logger *logger = [[Logger alloc]init];
        __unused NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval:   2.0
                                  target:                           logger
                                  selector:                         @selector(sayOuch:)
                                  userInfo:                         nil
                                  repeats:                          YES];
        
        
        
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}

