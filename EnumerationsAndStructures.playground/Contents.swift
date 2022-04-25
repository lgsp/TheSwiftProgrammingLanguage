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

let cards = [ace, king, queen, jack]
let cardVals = [aceRawValue, kingRawValue, queenRawValue, jackRawValue]

for card1 in cards {
    for card2 in cards {
        print(compareRank(card1: card1, card2: card2))
    }
}

if let convertedRank = Rank(rawValue: 3) {
    let threeDescription = convertedRank.simpleDescription()
}

enum Suit {
    case spades, hearts, diamonds, clubs
    
    func simpleDescription() -> String {
        switch self {
        case .spades:
            return "spades"
        case .hearts:
            return "hearts"
        case .diamonds:
            return "diamonds"
        case .clubs:
            return "clubs"
        }
    }
    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .hearts, .diamonds:
            return "red"
        }
    }
}

let suits = [Suit.hearts, Suit.clubs, Suit.diamonds, Suit.spades]
for suit in suits {
    print("\(suit.simpleDescription()) are \(suit.color())")
}

enum ServerResponse {
    case result(String, String)
    case failure(String)
}

let success = ServerResponse.result("6.00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset).")
case let .failure(message):
    print("Failure... \(message)")
}

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()

