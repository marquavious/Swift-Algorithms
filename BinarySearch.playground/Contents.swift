//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

func linearSearchForNumbers(searchValue: Int, array: [Int]) -> Bool {
    var iterations = 0
    for num in array{
        iterations += 1
        if num == searchValue {
            print("Lame...\(iterations) iterations")
            return true
        }
    }
    return false
}

func binarySearchForNumbers(searchValue: Int, array: [Int]) -> Bool {
    var leftIndex = 0
    var righIndex = array.count - 1
    var interatoions = 0
    while leftIndex <= righIndex {
        interatoions += 1
        let middleIndex = (leftIndex + righIndex)/2
        let middleValue = array[middleIndex]
        
        if middleValue == searchValue{
            print("WOW!! only \(interatoions) iterations!!")
            return true
        }
        
        if searchValue < middleValue {
            righIndex = middleIndex - 1
        }
        
        if searchValue > middleIndex{
            leftIndex = middleIndex+1
        }
    }
    return false
}


var nums = Array(0...1000000)
print("DONE CREATING ARRAY")


print("Binary search time: ")
let methodStart = Date()
print("Begin", methodStart)
binarySearchForNumbers(searchValue: 1000000, array: nums)
let methodFinish = Date()
let executionTime = methodFinish.timeIntervalSince(methodStart)
print("Execution time: \(executionTime)")


let methodStart2 = Date()
print("Lopping through the whole array?")
print("Begin", methodStart2)
linearSearchForNumbers(searchValue: 1000000, array: nums)
let methodFinish2 = Date()
let executionTime2 = methodFinish2.timeIntervalSince(methodStart2)
print("Execution time: \(executionTime2)")




