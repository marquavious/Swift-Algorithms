//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

var arrayOfNumbers = [Int]()

for i in 1...1000{
    arrayOfNumbers.append(i)
}

for num in arrayOfNumbers {
    if num % 15 == 0 {
        print(num,"FizzBuzz")
    } else if num % 3 == 0 {
        print(num,"Fizz")
    } else if num % 5 == 0{
        print(num,";Buzz")
    } else {
        print(num)
    }
}




//: [Next](@next)
