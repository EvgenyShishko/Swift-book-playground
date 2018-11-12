//: Playground - noun: a place where people can play

import UIKit

//The code below shows four examples of these special characters. The wiseWords constant contains two escaped double quotation marks. The dollarSign, blackHeart, and sparklingHeart constants demonstrate the Unicode scalar format:

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
// "Imagination is more important than knowledge" - Einstein
let dollarSign = "\u{24}"        // $,  Unicode scalar U+0024
let blackHeart = "\u{2665}"      // ♥,  Unicode scalar U+2665
let sparklingHeart = "\u{1F496}" // 💖, Unicode scalar U+1F496

//To create an empty String value as the starting point for building a longer string, either assign an empty string literal to a variable, or initialize a new String instance with initializer syntax:

var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other

//You indicate whether a particular String can be modified (or mutated) by assigning it to a variable (in which case it can be modified), or to a constant (in which case it can’t be modified):

var variableString = "Horse"
variableString += " and carriage"
// variableString is now "Horse and carriage"

let constantString = "Highlander"
//constantString += " and another Highlander" ERROR
// this reports a compile-time error - a constant string cannot be modified

// NOTE:
//This approach is different from string mutation in Objective-C and Cocoa, where you choose between two classes (NSString and NSMutableString) to indicate whether a string can be mutated.

//You can create a stand-alone Character constant or variable from a single-character string literal by providing a Character type annotation:
let exclamationMark: Character = "!"

//String values can be constructed by passing an array of Character values as an argument to its initializer:

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// Prints "Cat!🐱"

// STRING INTERPOLATION
// NOTE:
// The expressions you write inside parentheses within an interpolated string can’t contain an unescaped backslash (\), a carriage return, or a line feed. However, they can contain other string literals.

//Counting Characters
//To retrieve a count of the Character values in a string, use the count property of the string:
let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")


var welcome = "Welcome"
welcome.endIndex.encodedOffset

// Substring - is another class of string, that conforms to protocol "StringProtocol"
var substringLol = Substring()
substringLol += "lol"

var helloWorld: String = "Hello World!"
let helloRange = helloWorld.startIndex..<helloWorld.index(helloWorld.startIndex, offsetBy: 6)
let substringHello: Substring = helloWorld[helloRange]
let newWord = substringHello + helloWorld

_ = newWord.utf16.count

let airplaneScalar: Unicode.Scalar? = Unicode.Scalar(UInt32(9992))
let airplaneLiteral = "\u{2708}"
print(airplaneScalar)
print(airplaneLiteral)





