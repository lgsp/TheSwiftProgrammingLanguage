import Cocoa

var greeting = "Hello, playground"

// Enumerations and Structures
enum Rank: Int {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jack, queen, king
    
    func simpleDescription() -> String {
        switch self {
        case .ace:
            return "ace"
        case .jack:
            return "jack"
        case .queen:
            return "queen"
        case .king:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}


func compareRank(card1: Rank, card2: Rank) -> String {
    let card2Val = card2.rawValue
    let card1Desc = card1.simpleDescription()
    let card2Desc = card2.simpleDescription()
    print("Card 1: \(card1Desc) VS Card 2: \(card2Desc)")
    switch card1 {
    case .ace:
        if (card2Val == Rank.ace.rawValue) {return "Deuce!"}
        else {return String(card1.rawValue) + " beats " + String(card2Val)}
    case .jack:
        if (card2Val == Rank.jack.rawValue) {return "Deuce!"}
        else if (card2Val == Rank.ace.rawValue || card2Val == Rank.king.rawValue || card2Val == Rank.queen.rawValue) {
            return String(card1.rawValue) + " is beaten by " + String(card2Val)}
        else {return String(card1.rawValue) + " beats " + String(card2Val)}
    case .queen:
        if (card2Val == Rank.queen.rawValue) {return "Deuce!"}
        else if (card2Val == Rank.ace.rawValue || card2Val == Rank.king.rawValue) {
            return String(card1.rawValue) + " is beaten by " + String(card2Val)}
        else {return String(card1.rawValue) + " beats " + String(card2Val)}
    case .king:
        if (card2Val == Rank.king.rawValue) {return "Deuce!"}
        else if (card2Val == Rank.ace.rawValue) {
            return String(card1.rawValue) + " is beaten by " + String(card2Val)}
        else {return String(card1.rawValue) + " beats " + String(card2Val)}
    default:
        return "Houston, we have a problem"
    }
}


let ace = Rank.ace
let aceRawValue = ace.rawValue
let king = Rank.king
let kingRawValue = king.rawValue
let queen = Rank.queen
let queenRawValue = queen.rawValue
let jack = Rank.jack
let jackRawValue = jack.rawValue

print("Card 1 is Ace")
print("-------------")
print(compareRank(card1: ace, card2: ace))
print(compareRank(card1: ace, card2: king))
print(compareRank(card1: ace, card2: queen))
print(compareRank(card1: ace, card2: jack))

print("==================")

print("Card 1 is King")
print("--------------")
print(compareRank(card1: king, card2: ace))
print(compareRank(card1: king, card2: king))
print(compareRank(card1: king, card2: queen))
print(compareRank(card1: king, card2: jack))

print("==================")

print("Card 1 is Queen")
print("---------------")
print(compareRank(card1: queen, card2: ace))
print(compareRank(card1: queen, card2: king))
print(compareRank(card1: queen, card2: queen))
print(compareRank(card1: queen, card2: jack))

print("==================")

print("Card 1 is Jack")
print("--------------")
print(compareRank(card1: jack, card2: ace))
print(compareRank(card1: jack, card2: king))
print(compareRank(card1: jack, card2: queen))
print(compareRank(card1: jack, card2: jack))

print("==================")

let card1 = Rank.ace
let card1RawValue = ace.rawValue

let card2 = Rank.king
let card2RawValue = king.rawValue

print(compareRank(card1: card1, card2: card2))
