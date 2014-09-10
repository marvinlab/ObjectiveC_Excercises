//
//  main.c
//  TwoFloats
//
//  Created by Marvin Labrador on 9/10/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    //variable declarations
    float float_a;
    float float_b;
    double double_a;
    
    //variable assignments
    float_a = 125.22;
    float_b = 44.014;
    
    //operate
    double_a = float_a + float_b;
    
    printf("The sum is %f", double_a);
    return 0;
}

