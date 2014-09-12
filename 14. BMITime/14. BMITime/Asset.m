//
//  Asset.m
//  14. BMITime
//
//  Created by Marvin Labrador on 9/12/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//


#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

-(NSString *)description
{
    return [NSString stringWithFormat:@"<%@: $%d>",[self label],[self resaleValue]];
    
}

-(void)dealloc
{
    NSLog(@"deallocating %@", self);
}
@end
