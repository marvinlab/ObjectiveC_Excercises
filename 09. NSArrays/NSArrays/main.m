//
//  main.m
//  NSArrays
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24.0 * 60.0 * 60.0];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24.0 * 60.0 * 60.0];
        
        NSArray *dateList = [NSArray arrayWithObjects:now, tomorrow, yesterday, nil];
        
        NSLog(@"There are %lu dates", [dateList count]);

//        NSUInteger arrayCount = [dateList count];
        
//        for (int i = 0; i < arrayCount; i++){
//            NSLog(@"The date at index [%d] is %@", i, [dateList objectAtIndex:i]);
//        }
        
        for(NSDate *d in dateList){
            NSLog(@"a date is %@", d);
        }
        

    }
    return 0;
}

