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
        
        [Marvs setWeightInKilos:90];
        [Marvs setHeightInMeters:1.8];
    
        float bmi = [Marvs bodyMassIndex];
        NSLog(@"This person with a height of %.1f Meters and a weight of %d Kilos has a BMI of %.2f",
              [Marvs heightInMeters],[Marvs weightInKilos],bmi);
        
    }
    return 0;
}

