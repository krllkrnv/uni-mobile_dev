let array = [5, 2, 8, 1, 9]
let sortedArray = array.sorted { $0 < $1 }
print(sortedArray)
let reversedArray = array.sorted { $0 > $1 }
print(reversedArray)

func sortFriendsByLength(names: [String]) -> [String] {
    let sortedNames = names.sorted { $0.count < $1.count }
    return sortedNames
}

let friends = ["Alice", "Bob", "Charlie", "David"]
let sortedFriends = sortFriendsByLength(names: friends)
print(sortedFriends)

func createDictionary(names: [String]) -> [Int: String] {
    let dictionary = names.reduce(into: [Int: String]()) { (result, name) in
        result[name.count] = name
    }
    return dictionary
}

let dictionary = createDictionary(names: friends)
print(dictionary)

func printKeyValue(key: Int, dictionary: [Int: String]) {
    if let value = dictionary[key] {
        print("Ключ: \(key), Значение: \(value)")
    } else {
        print("Ключ не найден")
    }
}

printKeyValue(key: 5, dictionary: dictionary)
func checkAndPrintArrays(stringArray: [String], numberArray: [Int]) {
    if stringArray.isEmpty {
        print("Строковый массив пуст. Добавляем значение и выводим массив:")
        var modifiedStringArray = stringArray
        modifiedStringArray.append("New Value")
        print(modifiedStringArray)
    } else {
        print("Строковый массив не пуст. Выводим массив:")
        print(stringArray)
    }
    
    if numberArray.isEmpty {
        print("Числовой массив пуст. Добавляем значение и выводим массив:")
        var modifiedNumberArray = numberArray
        modifiedNumberArray.append(42)
        print(modifiedNumberArray)
    } else {
        print("Числовой массив не пуст. Выводим массив:")
        print(numberArray)
    }
}

let emptyStringArray: [String] = []
let nonEmptyStringArray = ["Hello", "World"]
let emptyNumberArray: [Int] = []
let nonEmptyNumberArray = [1, 2, 3]

checkAndPrintArrays(stringArray: emptyStringArray, numberArray: emptyNumberArray)
checkAndPrintArrays(stringArray: nonEmptyStringArray, numberArray: nonEmptyNumberArray)
