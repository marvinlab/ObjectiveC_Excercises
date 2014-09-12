//
//  main.m
//  14. BMITime
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        Person *Marvs = [[Person alloc]init];
        
//        [Marvs setWeightInKilos:90];
//        [Marvs setHeightInMeters:1.8];
        
//        Marvs.weightInKilos = 90;
//        Marvs.heightInMeters = 1.8;
//    
//        float bmi = [Marvs bodyMassIndex];
//        NSLog(@"This person with a height of %.1f Meters and a weight of %d Kilos has a BMI of %.2f",
//              [Marvs heightInMeters],[Marvs weightInKilos],bmi);
        
        
        Employee *person = [[Employee alloc]init];
        [person setWeightInKilos:90];
        [person setHeightInMeters:1.8];
        [person setEmployeeId:1211212];
        
        float bmi = [person bodyMassIndex];
        NSLog(@"This employee(id: %d) with a height of %.1f Meters and a weight of %d Kilos has a BMI of %.2f",
        [person employeeId],[person heightInMeters],[person weightInKilos],bmi);
     
//        [person count];
        
    }
    return 0;
}

