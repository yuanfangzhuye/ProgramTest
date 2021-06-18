//
//  main.m
//  Test
//
//  Created by lab team on 2021/6/16.
//

#import <Foundation/Foundation.h>
#import "LCReverseList.h"
#import "LCMergeSortedTwoList.h"
#import "LCFindFirstChar.h"
#import "LCFindMidDigital.h"

void char_reverse(char *cha) {
    char *begin = cha; // 定义第一个字符串
    char *end   = cha + strlen(cha) - 1; // 定义最后一个字符串
    while (begin < end) {
        /** 核心逻辑 - 换值 - 移动 */
        char lc_temp = *begin;
        *(begin++) = *end;
        *(end--) = lc_temp;
    }
}

/**
 字符串反转
 */
void test_char_reverse(void) {
    char ch[] = "Hello, World";
    char_reverse(ch);
    NSLog(@"%s", ch);
}

void twoSortedListMergeProgram(void) {
    int array[6] = {1, 3, 4, 5, 7, 9};
    int array2[8] = {2, 6, 8, 10, 12, 14, 15, 17};
    
    int result[14];
    
    mergeTwoSortedList(array, 6, array2, 8, result);
    for (int i = 0; i < 14; i++) {
        NSLog(@"输出：%d", result[i]);
    }
}

void test_nodeList_reverse(void) {
    struct LCNode *head = constructList();
    lc_printList(head);
    NSLog(@"--- 华丽的分割线 ---");
    struct LCNode *reverseNode = reverseList(head);
    lc_printList(reverseNode);
}


void findFirstShowChar(void) {
    char cha[] = "ksfahkdahfksliwe";
    char fc = hashFindFirstChar(cha);
    NSLog(@"%c", fc);
}

void findUnorderListMedian(void) {
    int list[9] = {5, 3, 10, 8, 7, 11, 13, 9, 20};
    int median = lc_findMedian(list, 9);
    
    NSLog(@"中位数：%d", median);
    
    // 排序 -  最中间的两个数
    // 利用快排思想
    // 随机选择 遍历 小 -- num=8 -- 大
    // 集合 (n-1)/2
    // 左侧<(n-1)/2 --- 中位数 -- 右侧的集合
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"*****************字符串反转*****************");
//        test_char_reverse();
        
        
//        NSLog(@"*****************链表反转*****************");
//        test_nodeList_reverse();
        
        
//        NSLog(@"*****************有序数组合并*****************");
//        twoSortedListMergeProgram();
        
        
//        NSLog(@"*****************查找第一个只出现一次的字符*****************");
//        findFirstShowChar();
        
        
        NSLog(@"*****************无序数组中位数查找*****************");
        findUnorderListMedian();
        
    }
    return 0;
}


