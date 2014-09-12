//
//  Employee.m
//  14. BMITime
//
//  Created by Marvin Labrador on 9/12/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "Employee.h"


@implementation Employee

@synthesize employeeId;

-(float)bodyMassIndex
{
    float normalBodyMassIndex = [super bodyMassIndex];
    
    return normalBodyMassIndex *.90;
    
}

@end
