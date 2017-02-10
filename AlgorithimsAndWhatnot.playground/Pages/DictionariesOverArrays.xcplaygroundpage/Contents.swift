//: [Previous](@previous)

import Foundation

var str = "Hello, playground"

//: Playground - noun: a place where people can play

import UIKit


enum RatingTag {
    case user
    case critic
}

class Movie {
    var name: String!
    var tag: RatingTag!
    var id: Int!
    var favorited = false
}

var terribleArray = [Movie]()
var movieDictionary = [Int:Movie]()

var movieOne = Movie()
movieOne.id = 1
movieOne.name = "To Die for"
movieOne.tag = .user
movieOne.favorited = false
movieDictionary[movieOne.id] = movieOne
terribleArray.append(movieOne)

var movieTwo = Movie()
movieTwo.id = 1
movieTwo.name = "To Die for"
movieTwo.tag = .critic
movieTwo.favorited = false
movieDictionary[movieTwo.id] = movieTwo
terribleArray.append(movieTwo)

var movieThree = Movie()
movieThree.id = 34
movieThree.name = "Bout to eat"
movieThree.tag = .user
movieTwo.favorited = false
movieDictionary[movieThree.id] = movieThree
terribleArray.append(movieThree)

var movieFour = Movie()
movieFour.id = 59
movieFour.name = "Surfin fam"
movieFour.tag = .user
movieTwo.favorited = false
movieDictionary[movieFour.id] = movieFour
terribleArray.append(movieFour)

var movieFive = Movie()
movieFive.id = 398
movieFive.name = "EATING PIE"
movieFive.tag = .critic
movieTwo.favorited = false
movieDictionary[movieFive.id] = movieFive
terribleArray.append(movieFive)


func addToFavorites(movie:Movie){
    if movie.favorited == true {
        movie.favorited = false
    }else{
        movie.favorited = true
    }
}

print(movieOne.favorited)
addToFavorites(movie: movieDictionary[movieOne.id]!)
print(movieTwo.favorited)


// Not using Dictionaries or whatever
func badAddToFavorites(movie:Movie){
    for movieToFind in terribleArray{
        if movieToFind.id == movie.id {
            movie.favorited = true
        }
    }
}


print(movieDictionary[movieFour.id]!.name)

//: [Next](@next)
