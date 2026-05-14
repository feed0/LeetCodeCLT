//
//  NumberOfStepsToReduceANumberToZeroTests.swift
//  LeetCodeTests
//
//  Created by feed0 on 14/05/26.
//

import Testing

struct NumberOfStepsToReduceANumberToZeroTests {
    
    // MARK: - Properties
    
    let numberOfSteps = NumberOfStepsToReduceANumberToZero.Solution().numberOfSteps.self
    
    // MARK: - Test cases
    
    @Test(arguments: [14, 8, 123]) /// Arrange
    func allExamples(num: Int) {
        /// Act
        let actualOutput = numberOfSteps(num)
        
        /// Assert
        let expectedOutput: Int
        
        switch num {
            case 14:
                expectedOutput = 6
            case 8:
                expectedOutput = 4
            case 123:
                expectedOutput = 12
            default:
                fatalError("Unhandled test case")
        }
        
        #expect(actualOutput == expectedOutput)
    }
}
