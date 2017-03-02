//: Playground - noun: a place where people can play

import Foundation


// 5.3 Replaceing occurance of a string with another one
let string = "We are here to Die, only a few have a valuable death"
print(string.length)
let replaced = string.replacingOccurrences(of: "e", with: "*")
// W* ar* h*r* to Di*, only a f*w hav* a valuabl* d*at

// 5.4 Reversing a string
let revered = string.reversed
// htaed elbaulav a evah wef a ylno ,eiD ot ereh era eW

// 5.5 Palindrome Check
print("HelloolleH".isPalindrome)
// true

// 5.6 Words
let words = string.components(separatedBy: " ")
// ["We", "are", "here", "to", "Die,", "only", "a", "few", "have", "a", "valuable", "death"]

// 5.8 Magic Times
let M = 5, N = 7
let singleLine = "*" * M + "\n"
print(singleLine * N)

// Output
//*****
//*****
//*****
//*****
//*****
//*****
//*****


let subString = string.subStringUptoString(string: "die")
let indexSubString = string.subString(start: 0, length: 4)
let hasSubString = "Sauvik Dolui".hasSubString(string: "Sauvik")// case insensitive search
let hasSubStringComparingCase = "Sauvik Dolui".hasSubString(string: "sauvik", compareOption: .literal) // case sensetive search
