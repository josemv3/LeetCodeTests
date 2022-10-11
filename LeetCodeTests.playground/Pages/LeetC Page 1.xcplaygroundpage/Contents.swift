import UIKit

//LEET CODE TEST AREA: 75



///Leet code challenge 75 QUESTION 1 - RInning sum
var nums = [1,2,3,4]
var nums2 = [1,1,1,1,1]


func runningSum(num: [Int]) -> [Int] {
    var newArrayPosition = 0
    var newArray: [Int] = []
    
    for numbers in num {
        if newArray.isEmpty {
            newArray.append(numbers)
            continue
        }
        newArray += [newArray[newArrayPosition] + numbers]
        newArrayPosition += 1
    }
    return newArray
}
//runningSum(num: nums)
//runningSum(num: nums2)



///Leet code challenge 75 QUESTION 2 - Find pivot
let pivotArray1 = [1,7,3,6,5,6]
let pivotArray2 = [1,2,3,4]
let pivotArray3 = [2,1,-1]
let pivotArray4 = [-1,-1,-1,-1,-1,-1]
let pivotArray5 = [-1,-1,-1,-1,-1,0]
let pivotArray6 = [1,1,1,1,0,4]
//var arraySum = pivotArray2.reduce(0, +)

func findPivot2(nums: [Int]) -> Int {
    
    for i in 0..<nums.count {
        let leftSum = nums.prefix(i).reduce(0, +)
        let rightSum = nums.suffix(nums.count - 1 - i ).reduce(0, +)
        //print("Left Sum", leftSum, "Right Sum", rightSum)
        if leftSum == rightSum {
            return i
        }
    }
    return -1
}
//findPivot2(nums: pivotArray1)
//findPivot2(nums: pivotArray2)
//findPivot2(nums: pivotArray3)
//findPivot2(nums: pivotArray4)
//findPivot2(nums: pivotArray5)
//findPivot2(nums: pivotArray6)



///Leet code challenge 75 QUESTION 3 - Isomorphic
//lengths == lengths or break
//both in set, removes duplicates - switched to array
//bind each letter to the other
//array1[0] = Dict[key] array2[0] = dict[array1[0]] = value

//egg = eg add =ad
//e:a, d:g

//dont need a set, if in dict already continue
//loop by value, build collection of values to check as the loop goes.
//changed loop1 from str1 to str2 since Dictionary key value already takes care of dups.

let test1A = "egg"
let test1B = "add"
let test1C = "foo"
let test1D = "bar"
let test1E = "paper"
let test1F = "title"
let test1G = ""
let test1H = ""
let test1I = "blizzard"
let test1J = "abcppdef"

func isIsomorphic(str1: String, str2: String) -> Bool {
    
    if str1.count != str2.count {
        return false
    }
    if str1.isEmpty {
        return false
    }
    let setA = Array(str1)
    let setB = Array(str2)
    var mapDict: [Character: Character] = [:]
    var count = 0
    //var setBCollected: Set<Character> = [] //Tried set first.
    var setBCollected: [Character] = [] //build collection (of potential values) to check duplicates.
    
    for char in setB {
        //setBCollected.insert(char)//add setB char to reference
        if setBCollected.contains(char) {
            count += 1
            continue
        }
        setBCollected.append(char)
        
        if mapDict[setA[count]] != nil {//if key is present - get out.
            count += 1
            continue
        }
        mapDict[setA[count]] = char
        count += 1
    }
    var count2 = 0
    for letter in setA {
        if mapDict[letter] == setB[count2] {
            count2 += 1
        } else {
            return false
        }
    }
    print(mapDict)
    return true
}
isIsomorphic(str1: test1A, str2: test1B)
isIsomorphic(str1: test1C, str2: test1D)
isIsomorphic(str1: test1E, str2: test1F)
isIsomorphic(str1: test1G, str2: test1H)
isIsomorphic(str1: test1I, str2: test1J)

