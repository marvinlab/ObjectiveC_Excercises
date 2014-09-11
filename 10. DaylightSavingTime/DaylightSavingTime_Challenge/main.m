//
//  main.m
//  DaylightSavingTime_Challenge
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        bool isdaylight;
        NSTimeZone *timezone = [NSTimeZone systemTimeZone];
        isdaylight = [timezone isDaylightSavingTime];
        
        if(isdaylight == TRUE){
            
            NSLog(@"It is now daylight saving time");
        }
        else{
            NSLog(@"It is NOT daylight saving time now");
        }
        
    }
    return 0;
}

