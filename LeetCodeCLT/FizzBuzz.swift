//
//  FizzBuzz.swift
//  LeetCodeCLT
//
//  Created by feed0 on 11/04/26.
//

import Foundation

/// https://leetcode.com/problems/fizz-buzz/description/

/// Given an integer n, return a string array answer (1-indexed) where:
///     answer[i] == "FizzBuzz" if i is divisible by 3 and 5.
///     answer[i] == "Fizz" if i is divisible by 3.
///     answer[i] == "Buzz" if i is divisible by 5.
///     answer[i] == i (as a string) if none of the above conditions are true.

/// Example 1:
///     Input: n = 3
///     Output: ["1","2","Fizz"]

/// Example 2:
///     Input: n = 5
///     Output: ["1","2","Fizz","4","Buzz"]

/// Example 3:
///     Input: n = 15
///     Output: ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]

/// Constraints:
///     1 <= n <= 10^4

struct FizzBuzz {
    
    struct Solution {
        
        public func fizzBuzz(_ n: Int) -> [String] {
            /// Arrange
            var resultList: [String] = []
            resultList.reserveCapacity(n) /// Optimization: Avoid multiple reallocations of the array as we append elements.
            
            /// Act - populate list
            for i in 1 ... n {
                resultList.append(
                    fizzBuzzValue(for: i)
                )
            }
            
            /// Return
            return resultList
        }
        
        // MARK: private functions
        
        private func fizzBuzzValue(for number: Int) -> String {
            if number.isMultiple(of: 15) { return "FizzBuzz" }
            else if number.isMultiple(of: 3) { return "Fizz" }
            else if number.isMultiple(of: 5) { return "Buzz" }
            else { return String(number) }
        }
    }
}
