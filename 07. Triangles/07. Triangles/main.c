//
//  main.c
//  07. Triangles
//
//  Created by Marvin Labrador on 9/10/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float angle_A, float angle_B){
    float angle_C = 180.0 - (angle_A + angle_B);
    return angle_C;
}


int main(int argc, const char * argv[]){
    float angle_A = 30.0;
    float angle_B = 60.0;
    float angle_C = remainingAngle(angle_A, angle_B);
    
    printf("The third angle is %.2f.\n", angle_C);
    
    return 0;
}

