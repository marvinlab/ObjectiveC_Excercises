//
//  Person.m
//  14. BMITime
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setHeightInMeters:(float)h
{
    heightInMeters = h;
}

-(void)setWeightInKilos:(int)w
{
    weightInKilos = w;
}

-(float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
