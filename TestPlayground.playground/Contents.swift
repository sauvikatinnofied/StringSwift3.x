//: Playground - noun: a place where people can play

import UIKit


// MARK:- STRINGS EXTENSION
extension String {
    
    // MARK: - COMPUTED PROPETIES
    var length: Int {
        return self.characters.count
    }
    var reversed: String {
        return String(self.characters.reversed())
    }
    var isPalindome: Bool {
        return self == reversed
    }
    var trimmed: String {
        return self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
    }
    
    // MARK: SUBSTING GENERATION
    func subString(start: Int, length: Int) -> String? {
        if start + length <= self.length {
            let subStringEndIndex = self.index(startIndex, offsetBy: length)
            return self.substring(with: startIndex..<subStringEndIndex)
        } else {
            return nil
        }
    }
    
    func subStringUptoString(string: String) -> String? {
        guard let index = self.range(of: string, options: .caseInsensitive) else {
            return nil
        }
        return self.substring(to: index.lowerBound)
    }
    
    // MARK: - CUSTOM OPERATORS
    static func * (lsh: String, times: Int) -> String {
        return Array(repeatElement(lsh, count: times)).joined(separator: "")
    }
    
    // MARK: - LOCALIZATION
    func localizedWithComment(comment: String?) -> NSString {
        return NSLocalizedString(self, comment: comment ?? "") as NSString
    }
    
}

// 5.3 Replaceing occurance of a string with another one
let string = "We are here to Die, only a few have a valuable death"
print(string.length)
let replaced = string.replacingOccurrences(of: "e", with: "*")
// W* ar* h*r* to Di*, only a f*w hav* a valuabl* d*at

// 5.4 Reversing a string
let revered = string.reversed
// htaed elbaulav a evah wef a ylno ,eiD ot ereh era eW

// 5.5 Palindrome Check
print("HelloolleH".isPalindome)
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
