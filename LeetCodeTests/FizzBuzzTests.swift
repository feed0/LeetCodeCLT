//
//  FizzBuzzTests.swift
//  LeetCodeTests
//
//  Created by feed0 on 11/04/26.
//

import Testing

struct FizzBuzzTests {
    
    // MARK: - Properties
    
    let fizzBuzz = FizzBuzz.Solution().fizzBuzz.self
    
    // MARK: - Test cases
    
    @Test(arguments: [1, 5, 15]) /// Arrange
    func allExamples(n: Int) {
        /// Act
        let actualOutput = fizzBuzz(n)
        
        /// Assert
        let expectedOutput: [String]
        
        switch n {
            case 1:
                expectedOutput = ["1"]
            case 5:
                expectedOutput = ["1","2","Fizz","4","Buzz"]
            case 15:
                expectedOutput = ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","FizzBuzz"]
            default:
                fatalError("Unhandled test case")
        }
        
        #expect(actualOutput == expectedOutput)
    }
}
