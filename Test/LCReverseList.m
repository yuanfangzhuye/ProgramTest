//
//  LCReverseList.m
//  Test
//
//  Created by lab team on 2021/6/18.
//

#import "LCReverseList.h"

@implementation LCReverseList

struct LCNode *reverseList(struct LCNode *head) {
    // 定义遍历指针，初始化为头节点
    struct LCNode *p = head;
    
    // 定义一个反转后的链表头部
    struct LCNode *resultList = NULL;
    
    // 遍历链表
    while (p != NULL) {
        struct LCNode *temp = p->next; // 记录下一个结点
        p->next =  resultList; // 当前结点的next指向新链表头部
        resultList = p; // 更改新链表头部为当前结点
        p = temp; // 移动p指针
    }
    
    return resultList;
}

struct LCNode *constructList(void) {
    struct LCNode *head = NULL; // 头结点定义
    struct LCNode *current = NULL; // 记录当前尾结点
    
    for (int i = 0; i < 5; i++) {
        struct LCNode *node = malloc(sizeof(struct LCNode));
        node->data = i;
        
        if (head ==  NULL) { // 头结点为空，新结点即为头结点
            head = node;
        }
        else { // 当前结点的next为新结点
            current->next = node;
        }
        current = node; // 设置当前结点为新结点
    }
    
    return head;
}

void lc_printList(struct LCNode *head) {
    struct LCNode *temp = head;
    while (temp != NULL) {
        NSLog(@"终点数据：%d", temp->data);
        temp = temp->next;
    }
}

@end
