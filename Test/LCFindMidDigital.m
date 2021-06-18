//
//  LCFindMidDigital.m
//  Test
//
//  Created by lab team on 2021/6/18.
//

#import "LCFindMidDigital.h"

@implementation LCFindMidDigital

int lc_findMedian(int a[], int aLen) {
    int low = 0;
    int high = aLen - 1;
    
    int mid = (aLen - 1) / 2;
    int div = lc_partSort(a, low, high);
    
    while (div != mid) {
        if (mid < div) {
            //左半区间找
            div = lc_partSort(a, low, div - 1);
        }
        else {
            //右半区间找
            div = lc_partSort(a, div + 1, high);
        }
    }
    
    //找到了
    return a[mid];
}


int lc_partSort(int a[], int start, int end) {
    int low = start; //0
    int high = end; //8
    
    int key = a[end]; //选取关键字 -20
    
    while (low < high) {
        
        // 左边找比 key 大的值
        while (low < high && a[low] <= key) {
            ++low;
        } //8
        
        //右边找比key小的值
        while (low < high && a[high] >= key) {
            --high;
        }
        
        if (low < high) {
            //找到之后交换左右的值
            int temp = a[low];
            a[low] = a[high];
            a[high] = temp;
        }
    }
    
    int temp = a[high];
    a[high] = a[end];
    a[end] = temp;
    
    return low;
}

@end
