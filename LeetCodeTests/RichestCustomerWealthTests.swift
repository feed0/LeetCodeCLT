//
//  RichestCustomerWealthTests.swift
//  LeetCodeTests
//
//  Created by feed0 on 11/04/26.
//

import Testing

struct RichestCustomerWealthTests {
    
    // MARK: - Properties
    
    let maximumWealth = RichestCustomerWealth.Solution().maximumWealth.self
    
    // MARK: - Test cases
    
    @Test func example1() {
        /// arrange
        let accounts = [[1,2,3],[3,2,1]]
        let expectedOutput = 6
        /// act
        let actualOutput = maximumWealth(accounts)
        /// assert
        #expect(actualOutput == expectedOutput)
    }

    @Test func example2() {
        /// arrange
        let accounts = [[1,5],[7,3],[3,5]]
        let expectedOutput = 10
        /// act
        let actualOutput = maximumWealth(accounts)
        /// assert
        #expect(actualOutput == expectedOutput)

    }

    @Test func example3() {
        /// arrange
        let accounts = [[2,8,7],[7,1,3],[1,9,5]]
        let expectedOutput = 17
        /// act
        let actualOutput = maximumWealth(accounts)
        /// assert
        #expect(actualOutput == expectedOutput)
    }

}
