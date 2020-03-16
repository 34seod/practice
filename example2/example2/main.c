//
//  main.c
//  example2
//
//  Created by btpink on 2020/03/16.
//  Copyright © 2020 서상현. All rights reserved.
//
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wstrict-prototypes"
#include <stdio.h>

int calculate_sum(int *array);

int main(int argc, const char * argv[]) {
    int sum, i, average;
    
    int num[10];
    
    for (i = 0; i < 10; i++) {
        scanf("%d", &num[i]);
    }
    
    sum = calculate_sum(num);
    
    average = sum / 10;
    printf("\n%d\n", sum);
    printf("%d\n", average);
    return 0;
}

int calculate_sum(int *array) {
    int sum, i;

    sum = 0;
    
    printf("\n");
    
    for (i = 0; i < 10; i++) {
        printf("%d", *(array+i)); // arithmetic
        sum = sum + array[i];
    }
    return sum;
    
}
