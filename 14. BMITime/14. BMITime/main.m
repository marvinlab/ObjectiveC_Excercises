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
        
        
        Employee *person = [[Employee alloc]init];
        Person *tao = [[Person alloc] init];
        
        [person setWeightInKilos:90];
        [person setHeightInMeters:1.8];
        [person setEmployeeId:1211212];
        
        [tao setWeightInKilos:90];
        [tao setHeightInMeters:1.8];
        
        float bmi = [person bodyMassIndex];
        NSLog(@"This employee(id: %d) with a height of %.1f Meters and a weight of %d Kilos has a BMI of %.2f",
        [person employeeId],[person heightInMeters],[person weightInKilos],bmi);
        
        float bmi2 = [tao bodyMassIndex];
        NSLog(@"This employee(id:) with a height of %.1f Meters and a weight of %d Kilos has a BMI of %.2f",
              [tao heightInMeters],[tao weightInKilos],bmi2);
     
        
    }
    return 0;
}

