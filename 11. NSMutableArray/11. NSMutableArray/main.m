//
//  main.m
//  11. NSMutableArray
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

        NSMutableArray *dateList = [NSMutableArray array];
        
        [dateList addObject:now];
        [dateList addObject:yesterday];
        [dateList addObject:tomorrow];
        
        NSUInteger arrayCount = [dateList count];
        NSLog(@"Added three objects\n");
        for (int i = 0; i < arrayCount; i++){
                       NSLog(@"The date at index [%d] is %@", i, [dateList objectAtIndex:i]);
            }
        
        
        [dateList removeObjectAtIndex:0];
        NSLog(@"Removed object 'now'\n");
        for (int i = 0; i < arrayCount-1; i++){
            NSLog(@"The date at index [%d] is %@", i, [dateList objectAtIndex:i]);
        }
        
        
        [dateList insertObject:now atIndex:1];
        NSLog(@"inserted object 'now' to index 1 \n");
        for (int i = 0; i < arrayCount; i++){
            NSLog(@"The date at index [%d] is %@", i, [dateList objectAtIndex:i]);
        }
        
    }
    return 0;
}

