//
//  main.m
//  12. NSMutableArray Challenge
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSMutableArray *grocerylist = [NSMutableArray array];
        
        [grocerylist addObject:@"patatas"];
        [grocerylist addObject:@"kamatis"];
        [grocerylist addObject:@"kalamansi"];
        [grocerylist addObject:@"cup noodles"];
        
        for(NSString *groceryitem in grocerylist){
            NSLog(@"Here is a grocery item: %@", groceryitem);
        }
        
    }
    return 0;
}

