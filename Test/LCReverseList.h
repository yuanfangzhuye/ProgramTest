//
//  LCReverseList.h
//  Test
//
//  Created by lab team on 2021/6/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 定义一个链表
struct LCNode {
    int data;
    struct LCNode *next;
};

@interface LCReverseList : NSObject

// 链表反转
struct LCNode *reverseList(struct LCNode *head);

// 构造一个链表
struct LCNode *constructList(void);

// 打印链表中的数据
void lc_printList(struct LCNode *head);

@end

NS_ASSUME_NONNULL_END
