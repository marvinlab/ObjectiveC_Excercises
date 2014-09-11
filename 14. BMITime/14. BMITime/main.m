//
//  main.m
//  14. BMITime
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Person *Marvs = [[Person alloc]init];
        
        [Marvs setWeightInKilos:60];
        [Marvs setHeightInMeters:500];
    
        float bmi = [Marvs bodyMassIndex];
        NSLog(@"this person's BMI is %f",bmi);
        
    }
    return 0;
}

