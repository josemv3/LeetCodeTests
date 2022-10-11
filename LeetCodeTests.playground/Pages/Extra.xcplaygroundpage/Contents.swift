//: [Previous](@previous)

import Foundation





///PIVOT
//func findPivot(nums: [Int]) -> Int {
//    var lhs = 0
//    var rhs = nums.count - 1
//    var leftTotal = 0
//    var rightTotal = 0
//
//    if nums.isEmpty {
//        return -1
//    }
//
//    for num in nums {
//        if nums[rhs] + nums[rhs - 1] == 0 { //Edge case #3 solve
//            return 0
//        }
//        leftTotal = (num + leftTotal) // left add index 1 and check
//        print("leftTotal", leftTotal, "lhs", lhs)
//
//        if leftTotal ==  rightTotal {
//            lhs += 1
//            return lhs
//        }
//        rightTotal = (nums[rhs] + rightTotal) // right add last index and check
//        print("rightTotal", rightTotal, "rhs", rhs)
//
//        if leftTotal ==  rightTotal {
//            lhs += 1
//            return lhs
//        }
//        if lhs == rhs - 1 {
//            rhs -= 1
//            rightTotal = nums[rhs] + rightTotal
//
//            if leftTotal == rightTotal {
//                return lhs
//            }
//            print("Break",lhs,rhs)
//            break
//        }
//
//        lhs += 1
//        rhs -= 1
//    }
//    return -1
//}

//findPivot(nums: pivotArray1)
//findPivot(nums: pivotArray2)
//findPivot(nums: pivotArray3)
//findPivot(nums: pivotArray4)//need a mid point or a way to see if
//findPivot(nums: pivotArray5)
//findPivot(nums: pivotArray6)

//while lhs =< rhs {


//func findPivot(nums: [Int]) -> Int {
//    var lhs = 0
//    var rhs = nums.count - 1
//    var leftTotal = 0
//    var rightTotal = 0
//
//    if nums.isEmpty {
//        return -1
//    }
//
//    for num in nums {
//
//        if nums[rhs] + nums[rhs - 1] == 0 { //Edge case #3 solve
//            return 0
//        }
//        //main solve:
//        leftTotal = num + leftTotal //total left
//        rightTotal = nums[rhs] + rightTotal //total right
//        print("LEFT \(leftTotal)")
//        print("RIGHT \(rightTotal)")
//
//        if leftTotal == rightTotal {
//            lhs += 1 //grab next index for return solve below:
//            return lhs
//        }//main solve
//
//        print("lhs / rhs", lhs, rhs)
//        if lhs == rhs - 1 {
//            rhs -= 1
//            rightTotal = nums[rhs] + rightTotal
//
//            if leftTotal == rightTotal {
//                return lhs
//            }
//            break
//        }
//        //move pointers right and left
//        lhs += 1
//        rhs -= 1
//    }
//    return -1
//}
