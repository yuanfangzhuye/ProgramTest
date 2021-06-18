//
//  LCMergeSortedTwoList.h
//  Test
//
//  Created by lab team on 2021/6/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LCMergeSortedTwoList : NSObject

// 将有序数组a和b的值合并到一个数组result当中，且仍然保持有序
void mergeTwoSortedList(int a[], int aLength, int b[], int bLength, int result[]);

@end

NS_ASSUME_NONNULL_END
