//
//  LCFindFirstChar.m
//  Test
//
//  Created by lab team on 2021/6/18.
//

#import "LCFindFirstChar.h"

@implementation LCFindFirstChar

char hashFindFirstChar(char *cha) {
    char result = '\0';
    int array[256]; // 定义一个数组 用来存储各个字母出现次数
    
    // 对数组进行初始化操作
    for (int i = 0; i < 256; i++) {
        array[i] = 0;
    }
    
    // 定义一个指针 指向当前字符串头部
    char *p = cha;
    
    // 遍历每个字符
    while (*p != '\0') {
        // 在字母对应存储位置 进行出现次数+1操作
        array[*(p++)]++;
    }
    
    // 将P指针重新指向字符串头部
    p = cha;
    
    // 遍历每个字母的出现次数
    while (*p != '\0') {
        if (array[*p] == 1) { // 遇到第一个出现次数为1的字符，打印结果
            result = *p;
            break;
        }
        p++; // 反之继续向后遍历
    }
    
    return result;
}

@end
