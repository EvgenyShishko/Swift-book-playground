import Foundation

// Types can be nested to as many levels as are required.
struct BlackjackCard {
	
	// nested Suit enumeration
	enum Suit: Character {
		case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
	}
	
	// nested Rank enumeration
	private enum Rank: Int {
		case two = 2, three, four, five, six, seven, eight, nine, ten
		case jack, queen, king, ace
		struct Values {
			let first: Int, second: Int?
		}
		var values: Values {
			switch self {
			case .ace:
				return Values(first: 1, second: 11)
			case .jack, .queen, .king:
				return Values(first: 10, second: nil)
			default:
				return Values(first: self.rawValue, second: nil)
			}
		}
	}
	
	// BlackjackCard properties and methods
	private let rank: Rank, suit: Suit
	var description: String {
		var output = "suit is \(suit.rawValue),"
		output += " value is \(rank.values.first)"
		if let second = rank.values.second {
			output += " or \(second)"
		}
		return output
	}
}

let str = "0 1 0 1 0 1 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 0 1 0 1 0 0 0 1 0 1 0 1 0 1 0 0 0 1 0 0 0 0 0 1 0 1 0 1 0 0 1 0 1 0 1 0 0 1 0 0 0 0 1 0 0 1 0 0 0 1 0 0 1 0 1 0"
let c: [Int] = str.split(separator: " ").map {
	if let cItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
		return cItem
	} else { fatalError("Bad input") }
}

var stepCount = 0
var currentCloud = 0

while (currentCloud < c.count) {
	if (c[currentCloud + 2] == 1) {
		currentCloud += 1
	} else {
		currentCloud += 2
	}
	stepCount += 1
}
print(stepCount)
