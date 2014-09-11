//
//  Person.m
//  14. BMITime
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

-(float)bodyMassIndex
{
    //return weightInKilos / (heightInMeters * heightInMeters);
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
