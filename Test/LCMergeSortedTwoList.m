//
//  LCMergeSortedTwoList.m
//  Test
//
//  Created by lab team on 2021/6/18.
//

#import "LCMergeSortedTwoList.h"

@implementation LCMergeSortedTwoList

void mergeTwoSortedList(int a[], int aLength, int b[], int bLength, int result[]) {
    int p = 0; // 遍历数组 a 的指针
    int q = 0; // 遍历数组 b 的指针
    int s = 0; // 记录当前存储位置
    
    // 任一数组没有到达边界则进行遍历
    while (p < aLength && q < bLength) {
        if (a[p] <= b[q]) { // 如果a数组对应位置的值小于b数组对应位置的值
            result[s] = a[p]; // 存储a数组的值
            p++; // 移动a数组的遍历指针
        }
        else {
            result[s] = b[q]; // 存储b数组的值
            q++; // 移动b数组的遍历指针
        }
        s++; // 指向合并结果的下一个存储位置
    }
    
    // 如果a数组有剩余
    while (p < aLength) {
        result[s] = a[p++]; // 将a数组剩余部分拼接到合并结果的后面
        s++;
    }
    
    // 如果b数组有剩余
    while (q < bLength) {
        result[s] = b[q++]; // 将b数组剩余部分拼接到合并结果的后面
        s++;
    }
}

@end
