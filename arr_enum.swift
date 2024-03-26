let daysInMonths = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
let monthNames = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]
for days in daysInMonths {
    print(days)
}
for (index, days) in daysInMonths.enumerated() {
    let month = monthNames[index]
    print("\(month): \(days) дней")
}
let months = [("Январь", 31), ("Февраль", 28), ("Март", 31), ("Апрель", 30), ("Май", 31), ("Июнь", 30), ("Июль", 31), ("Август", 31), ("Сентябрь", 30), ("Октябрь", 31), ("Ноябрь", 30), ("Декабрь", 31)]

for month in months {
    print("\(month.0): \(month.1) дней")
}
for days in daysInMonths.reversed() {
    print(days)
}
let targetMonth = 3 // номер месяца 
let targetDay = 15 // номер дня 

var totalDays = 0

for (index, days) in daysInMonths.enumerated() {
    if index < targetMonth - 1 {
        totalDays += days
    } else if index == targetMonth - 1 {
        totalDays += targetDay
        break
    }
}

print("Количество дней до \(targetDay) \(monthNames[targetMonth - 1]): \(totalDays)")