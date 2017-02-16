//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

func recursiveFunctionOfValue(value: UInt) -> UInt{
    if value == 0 {
        return 1
    }
    
    print(value)
    
    return value * recursiveFunctionOfValue(value: value - 1)
}

recursiveFunctionOfValue(value: 5)


//: [Next](@next)
