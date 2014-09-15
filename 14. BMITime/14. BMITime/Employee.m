//
//  Employee.m
//  14. BMITime
//
//  Created by Marvin Labrador on 9/12/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeId;

-(void)addAssetsObject:(Asset *)a
{
        //is asset nil?
        if(!assets){
            //create the array
            assets = [[NSMutableArray alloc]init];
        }
    [assets addObject:a];
    [a setHolder:self];
}

-(unsigned int)valueOfAssets
{
    // Sum up the resale value of the assets
    unsigned int sum = 0;
    for (Asset *a in assets){
        sum += [a resaleValue];
    }
    return sum;
}

-(float)bodyMassIndex
{
    float normalBodyMassIndex = [super bodyMassIndex];
    
    return normalBodyMassIndex *.90;
    
}

-(NSString *)description
{
    
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>",
            [self employeeId], [self valueOfAssets]];
}


-(void)dealloc
{
    
    NSLog(@"deallocating %@",self);
}

@end
