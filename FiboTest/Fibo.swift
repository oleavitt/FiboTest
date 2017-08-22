//
//  Fibo.swift
//  FiboTest
//
//  Created by Oren Leavitt on 8/22/17.
//  Copyright © 2017 Oren Leavitt. All rights reserved.
//

import Foundation

public class Fibo {
    
    static var count = 0
    
    class func rfib(_ n:Int) -> Int {
        
        count += 1
        
        if n < 2 {
            return 1
        }
        
        return rfib(n - 1) + rfib(n - 2)
    }
    
    static var memo:[Int:Int] = [:]
    
    class func startRfibMemo(_ n:Int) -> Int {
        memo = [:]
        return rfibMemo(n)
    }
    
    private class func rfibMemo(_ n:Int) -> Int {
        
        if let memoValue = memo[n] {
            return memoValue
        }
        
        count += 1

        if n < 2 {
            return 1
        }
        
        let newValue = rfibMemo(n - 1) + rfibMemo(n - 2)
        memo[n] = newValue
        
        return newValue
    }
}
