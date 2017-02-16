//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

var arrayOfIntsToSort = [-1,-6,-49,2,7,2,8,5,3,9]

var a = [3,5,6,3,2,6,7,3,4,6]
var b = [-3,-7,-4,3,256,32]


func merge(arrayOne:[Int], arrayTwo:[Int]){
    var output:[Int] = []
    var i = 0
    var j = 0
    let lengthOneLength = arrayOne.count
    let lengthTwoLength = arrayTwo.count
    
    while (i < lengthOneLength || j < lengthTwoLength) {
        if (i < lengthOneLength && j < lengthTwoLength){
            if arrayOne[i] <= arrayTwo[j]{
                output += [arrayOne[i]]
                i = i + 1
            } else {
                output += [arrayOne[j]]
                j = j + 1
            }
        } else if i < lengthOneLength {
            output += [arrayOne[i]]
            i = i + 1
        } else {
            output += [arrayTwo[j]]
            j = j + 1
        }
    }
    print(output)
}

merge(arrayOne: a, arrayTwo: b)

//: [Next](@next)
