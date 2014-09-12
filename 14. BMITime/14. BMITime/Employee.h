//
//  Employee.h
//  14. BMITime
//
//  Created by Marvin Labrador on 9/12/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset; //can be an alternative to #import "Asset.h"

@interface Employee : Person
{
    int employeeId;
    NSMutableArray *assets;
}
@property int employeeId;
-(void)addAssetsObject:(Asset *)a;
-(unsigned int)valueOfAssets;

@end
