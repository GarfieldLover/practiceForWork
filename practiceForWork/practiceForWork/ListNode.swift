//
//  List.swift
//  practiceForWork
//
//  Created by zk on 2024/12/8.
//

import Foundation
import SwiftUI

// 定义链表节点结构体
class ListNode {
    var val: Int
    var next: ListNode?
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    
    class func reverseList(_ head: ListNode?) -> ListNode? {
        guard let current = head else {
            return nil
        }
        if current.next == nil {
            return current
        }
        let newHead = reverseList(current.next)
        current.next?.next = current
        current.next = nil
        return newHead
    }

    class func testReverseList() -> some View {
        // 创建测试链表
        let node1 = ListNode(1)
        let node2 = ListNode(2)
        let node3 = ListNode(3)
        let node4 = ListNode(4)
        node1.next = node2
        node2.next = node3
        node3.next = node4

        // 调用反转链表函数
        let reversedHead = reverseList(node1)

        // 遍历打印反转后的链表，验证结果
        var currentNode = reversedHead
        while currentNode != nil {
            print(currentNode!.val)
            currentNode = currentNode!.next
        }
        
        return Text("Count")
    }

}

