//
//  main.c
//  04. Functions
//
//  Created by Marvin Labrador on 9/10/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#include <stdio.h>

void congratulateStudent(char *student, char *course, int numDays)
{
    printf("%s has done as much %s Programming as I could fit into %d days. \n", student, course, numDays);
    
}

int main(int argc, const char * argv[])
{
    congratulateStudent("Marvs", "Objective-C", 10);
    congratulateStudent("Josh", "PHP", 10);
    congratulateStudent("Russel", "Java", 10);
    
    
    return 0;
    
}

