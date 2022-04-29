import Cocoa

// Declaring Constants and Variables
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0

// Type Annotations
var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double

let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"

var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour"

let languageName = "Swift"
//languageName = "Swift++" // error

// Printing Constants and Variables
print(friendlyWelcome)
print("Sans aller à la ligne", terminator: "")
print("En allant à la ligne")
print("yeah")

print("The current value of friendlyWelcome is \(friendlyWelcome)")

// Comments
// Single line comment.
/*
  Multi
  lines
  comment
 */

// Semicolons
let cat = "🐱"; print(cat)

// Integers

// Integer Bounds
let minValue = UInt8.min // minValue is equal to 0, and is of type UInt8
let maxValue = UInt8.max // maxValue is equal to 255, and is of type UInt8



 // Floating-Point Numbers


// Type Safety and Type Inference

let meaningOfLife = 42
// meaningOfLife is inferred to be of type Int

let pi = 3.14159
// pi is inferred to be of type Double

let anotherPi = 3 + 0.14159
// anotherPi is also inferred to be of type Double

// Numeric Literals
let decimalInteger = 17
let binaryInteger = 0b10001 // 17 in binary notation
let octalInteger = 0o21 // 17 in octal notation
let hexadecimalInteger = 0x11 // 17 in hexadecimal notation

let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1

// Numeric Type Conversion
