//
//  main.c
//  example4
//
//  Created by btpink on 2020/03/16.
//  Copyright © 2020 서상현. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int * p;
    p = (int *)malloc(40);
    if (p == NULL) {
        // 동적 메모리 할당이 실패
        // 적절한 조치를 취한다.
    }

    p[0] = 12;
    p[1] = 24;
    *(p+2) = 36;
    //printf("%d\n", p+2);

    int * array = (int *)malloc(4 * sizeof(int));
    array[0] = 1;
    array[1] = 2;
    array[3] = 3;

    int * tmp = (int *)malloc(8 * sizeof(int));
    int i;
    for (i = 0; i < 4; i++) {
        tmp[i] = array[i];
    }
    array = tmp;

    array[4] = 4;
    array[6] = 11;

//    int j;
//    for (j=0; j<8; j++) {
//        printf("%d\n", array[j]);
//    }
    printf("%d\n", array[5]);
    printf("%d\n", array);
    printf("%d\n", &array[0]);
    return 0;
}
