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

-(float)heightInMeters
{
    return heightInMeters;
}

-(void)setWeightInKilos:(int)w
{
    weightInKilos = w;
}

-(int)weightInKilos
{
    return weightInKilos;
}

-(float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
