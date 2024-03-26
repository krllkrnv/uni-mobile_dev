enum EnumWithIntRawValue: Int {
    case case1 = 1
    case case2 = 2
}

enum EnumWithStringRawValue: String {
    case caseA = "A"
    case caseB = "B"
}
enum Gender {
    case male
    case female
}

enum AgeCategory {
    case young
    case middleAged
    case senior
}

enum Experience {
    case junior
    case midLevel
    case senior
}
enum RainbowColor {
    case red
    case orange
    case yellow
    case green
    case blue
    case indigo
    case violet
}
enum Fruit {
    case apple
    case banana
    case orange
}

func printEnumCases() {
    let fruits: [Fruit] = [.apple, .banana, .orange]
    
    for fruit in fruits {
        switch fruit {
        case .apple:
            print("apple green")
        case .banana:
            print("banana yellow")
        case .orange:
            print("orange orange")
        }
    }
}

printEnumCases()
enum Score: String {
    case excellent = "A"
    case good = "B"
    case satisfactory = "C"
    case needsImprovement = "D"
    case fail = "F"
}

func assignGrades(score: Score) -> Int {
    switch score {
    case .excellent:
        return 5
    case .good:
        return 4
    case .satisfactory:
        return 3
    case .needsImprovement:
        return 2
    case .fail:
        return 1
    }
}

let studentScore: Score = .good
let grade = assignGrades(score: studentScore)
print("Student's grade: \(grade)")
enum Car {
    case sedan
    case suv
    case sports
}

func printGarageCars() {
    let garage: [Car] = [.sedan, .suv, .sports]
    
    for car in garage {
        switch car {
        case .sedan:
            print("Sedan car")
        case .suv:
            print("SUV car")
        case .sports:
            print("Sports car")
        }
    }
}

printGarageCars()
