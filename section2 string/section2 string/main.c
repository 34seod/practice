//
//  main.c
//  section2 string
//
//  Created by btpink on 2020/03/17.
//  Copyright © 2020 서상현. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[]) {
    // insert code here...
    char str[6];
    str[0] = 'h';
    str[0] = 'h';
    str[0] = 'h';
    str[0] = 'h';
    str[0] = 'h';
    str[0] = '\0';
    
    char str2[] = "hello";
    char * str3 = "hello";
    printf("%s\n", str);
    printf("%s\n", str2);
    printf("%s\n", str3);
    return 0;
}
