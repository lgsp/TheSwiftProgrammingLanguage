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
let ace = Rank.ace
let aceRawValue = ace.rawValue

func compareRank(card1: Rank, card2: Rank) -> String {
    if (card1.rawValue == Rank.ace.rawValue) {
        if (card2.rawValue == Rank.ace.rawValue) {return "Deuce!"}
        else {return "\(card1.rawValue) beats \(card2.rawValue)"}
        
    }
}
