class House {
    var houseWidth: Int
    var houseHeight: Int
    var isDestroyed: Bool = false
    
    init(width: Int, height: Int) {
        self.houseWidth = width
        self.houseHeight = height
    }
    
    func create() {
        let area = houseWidth * houseHeight
        print("S = : \(area) м^2")
    }
    
    func destroy() {
        isDestroyed = true
        print("Дом уничтожен")
    }
}

let myHouse = House(width: 1, height: 1)
myHouse.create()
myHouse.destroy()

class Student: Comparable {
    var fullName: String
    var age: Int
    
    init(name: String, age: Int) {
        self.fullName = name
        self.age = age
    }
    
    static func < (o1: Student, o2: Student) -> Bool {
        return o1.fullName < o2.fullName || (o1.fullName == o2.fullName && o1.age < o2.age)
    }
    
    static func == (o1: Student, o2: Student) -> Bool {
        return o1.fullName == o2.fullName && o1.age == o2.age
    }
}

var students = [
    Student(name: "A", age: 18),
    Student(name: "B", age: 19),
    Student(name: "C", age: 20)
]

students.sort { $0.fullName < $1.fullName }
students.forEach { print($0.fullName) }

students.sort { $0.age < $1.age }
students.forEach { print($0.fullName, $0.age) }

class Shape {
    var area: Double
    
    init(area: Double) {
        self.area = area
    }
}

class Rectangle: Shape {
    var rectangleWidth: Double
    var rectangleHeight: Double
    
    init(width: Double, height: Double) {
        self.rectangleWidth = width
        self.rectangleHeight = height
        super.init(area: width * height)
    }
}

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
        super.init(area: 2 * 3.14 * radius * radius)
    }
}

enum Suit: String, CaseIterable {
    case hearts = "Черви"
    case diamonds = "Буби"
    case clubs = "Крести"
    case spades = "Пики"
}

enum Rank: String, CaseIterable {
    case two = "2", three = "3", four = "4", five = "5", six = "6", seven = "7", eight = "8", nine = "9", ten = "10"
    case jack = "J", queen = "Q", king = "K", ace = "T"
}

struct Card {
    let rank: Rank
    let suit: Suit
    
    var description: String {
        return "\(rank.rawValue) \(suit.rawValue)"
    }
}

func generateDeck() -> [Card] {
    var deck = [Card]()
    for suit in Suit.allCases {
        for rank in Rank.allCases {
            let card = Card(rank: rank, suit: suit)
            deck.append(card)
        }
    }
    return deck
}

func dealHand(from deck: [Card]) -> [Card] {
    var shuffledDeck = deck
    shuffledDeck.shuffle()
    return Array(shuffledDeck.prefix(5))
}

func checkForFlush(_ hand: [Card]) -> Bool {
    let firstSuit = hand[0].suit
    return hand.allSatisfy { $0.suit == firstSuit }
}

func checkHand(_ hand: [Card]) {
    for card in hand {
        print("\(card.description)")
    }
    
    if checkForFlush(hand) {
        print("У вас флэш!")
    } else {
        print("У вас не флэш.")
    }
}

let deck = generateDeck()
let hand = dealHand(from: deck)

checkHand(hand)
