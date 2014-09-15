//
//  main.m
//  16. NSLocale
//
//  Created by Marvin Labrador on 9/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"\u03c0 is %f", M_PI);
        NSLog(@"%d is larger", MAX(10,12));
     
        
        NSLocale *here = [NSLocale currentLocale];
//        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];  //same as the next line
        NSString *currency = [here objectForKey:NSLocaleCurrencyCode];
        NSLog(@"Money is %@", currency);
    }
    return 0;
}

