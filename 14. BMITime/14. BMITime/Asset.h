//
//  Asset.h
//  14. BMITime
//
//  Created by Marvin Labrador on 9/12/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Employee;

@interface Asset : NSObject
{
    NSString *label;
    __weak Employee *holder;
    unsigned int resaleValue;
}

@property (strong) NSString *label;
@property (weak) Employee *holder;
@property unsigned int resaleValue;
@end
