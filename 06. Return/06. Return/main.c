//
//  main.c
//  06. Return
//
//  Created by Marvin Labrador on 9/10/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

float lastTemperature; //Global Variable

float fahrenheitFromCelsius(float cel){
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    
    printf("%f Celsius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}


int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelsius(freezeInC);
    printf("Water freezes at %f degrees fahrenheit\n",freezeInF);
    printf("The last temperature converted was %f\n", lastTemperature);
    return EXIT_SUCCESS;
}

