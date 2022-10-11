//: [Previous](@previous)

import UIKit



///Leet code challenge 75 QUESTION 5 - Find subsequence
//count = 0
//
//s array("ace")
// for letter in t
// if letter == s[count]
// count += 1


func findSubsequence(s: String, t: String) -> Bool {
    var count = 0
    let sLetters = Array(s)
    var foundLetter = ""
    
    for letter in t {
        
        if letter == sLetters[count] {
            count += 1
            foundLetter += String(letter)
        }
       
        if count == s.count {
            if foundLetter.count == s.count {
                print("foundLetter:", foundLetter.count, "s:", s.count)
                return true
            }
        }
    }
    return false
}
findSubsequence(s: "abc", t: "abcde")
findSubsequence(s: "axc", t: "ahbgdc")
findSubsequence(s: "ace", t: "abcde")



