//
//  main.c
//  03. Challenge_ch3
//
//  Created by Marvin Labrador on 9/10/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 20;
    int j = 25;
    
    int k = (i > j) ? 10 : 5;
   
    if ( 5 < j-k ) {// first expression
        printf("The first expression is true. \n");
    } else if ( j > i ) {//second expression
        printf("The second expression is true. \n");
    } else {
        printf("neither expression is true. \n");
    }
    
    return 0;
}

