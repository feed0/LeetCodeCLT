//
//  RunningSumTests.swift
//  LeetCodeTests
//
//  Created by Felipe Eduardo Campelo Ferreira Osorio on 24/12/25.
//

import Testing

struct RunningSumTests {
    
    // MARK: - Properties
    
    let runningSum = RunningSum.Solution.runningSum.self

    // MARK: - Test cases
    
    @Test func example1() {
        /// arrange
        let nums            = [1, 2, 3, 4]
        let expectedOutput  = [1, 3, 6, 10]
        
        /// act
        let actualOutput = runningSum(nums)
        
        /// assert
        #expect(actualOutput == expectedOutput)
    }
    
    @Test func example2() {
        /// arrange
        let nums            = [1, 1, 1, 1, 1]
        let expectedOutput  = [1, 2, 3, 4, 5]
        
        /// act
        let actualOutput = runningSum(nums)
        
        /// assert
        #expect(actualOutput == expectedOutput)
    }
    
    @Test func example3() {
        /// arrange
        let nums            = [3, 1, 2, 10, 1]
        let expectedOutput  = [3, 4, 6, 16, 17]
        
        /// act
        let actualOutput = runningSum(nums)
        
        /// assert
        #expect(actualOutput == expectedOutput)
    }

}
