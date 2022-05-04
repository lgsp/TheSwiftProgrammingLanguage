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

var pi = 3.14159
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
//let cannotBeNegative: UInt8 = -1
// UInt8 can't store negative numnbers, and so this will report an error
//let tooBig: Int8 = Int8.max + 1
// Int8 can't store a number larger than its maximum value,
// and so this will also report an error

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// Integer and Floating-Point Conversion
let three = 3
let pointOneFourOneFiveNine = 0.14159
pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double

let integerPi = Int(pi)
// integerPi equals 3, and is inferred to be of type Int

// Type Aliases
typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min
// maxAmplitudeFound is now 0

// Booleans
let orangesAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}
// Prints "Eww, turnips are horrible."

let i = 1
if i == 1 {
    // this example will compile successfully
}

// Tuples
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

let (justTheStatusCode, _) = http404Error
print("The status code is \(justTheStatusCode)")
// prints "The status code is 404"

print("The status code is \(http404Error.0)")
// prints "the status code is 404"
print("The status message is \(http404Error.1)")
// prints "the status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")

print("The status code is \(http200Status.statusCode)")
// prints "the status code is 200"
print("The status message is \(http200Status.description)")
// prints "The status message is OK"

// Optionals
