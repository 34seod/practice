//
//  main.c
//  hello
//
//  Created by btpink on 2020/03/16.
//  Copyright © 2020 서상현. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    int c = 12;
    int *p;
    
    p = &c;
    printf("%d\n", c);
    printf("%p\n", &c);
    printf("%p\n", p);
    
    int x = 1, y = 2;
    int * ip;
    ip = &x;
    y = *ip;
    *ip = 0;
    printf("%d\n", x);
    printf("%d\n", y);
    printf("%p\n", ip);
    
    int a[10];
    printf("%p\n", a);
    
    
    return 0;
}
