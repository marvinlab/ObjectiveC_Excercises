//
//  main.m
//  14. BMITime
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        
       /* Employee *person = [[Employee alloc]init];
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
     */
        
        // Create an array of Employee Objects
        NSMutableArray *employees = [NSMutableArray array];
        
        for(int i =0; i < 10; i++){
        //Create an instance of Employee
            Employee *person = [[Employee alloc] init];
            
        // Give the instance variables interesting values
            [person setWeightInKilos:90+i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeId:i];
            
        //Put the employee in the employees array
            [employees addObject:person];
        }
        
        // Create 10 assets
        for (int i = 0; i < 10; i++){
            
            //Create an Asset
            Asset *asset = [[Asset alloc] init];
            
            //Give it an insteresting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d",i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];
            
            //Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];
            
            //Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];
            
            //Assign Asset to the employee
            [randomEmployee addAssetsObject:asset];
        }
        
        NSLog(@"Employees: %@", employees);
        NSLog(@"Giving up ownership of one employee");
        
        [employees removeObjectAtIndex:5];
        
        NSLog(@"Giving up ownership of array");
        
        employees = nil;
        
            
        
        
    }
    return 0;
}

