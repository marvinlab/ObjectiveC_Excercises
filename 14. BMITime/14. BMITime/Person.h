//
//  Person.h
//  14. BMITime
//
//  Created by Marvin Labrador on 9/11/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    float heightInMeters;
    int weightInKilos;
}

-(void)setHeightInMeters:(float)h;

//-(float)heightInMeters;
@property float heightInMeters;

-(void)setWeightInKilos:(int)w;
//-(int)weightInKilos;

@property int weightInKilos;
-(float)bodyMassIndex;

@end
