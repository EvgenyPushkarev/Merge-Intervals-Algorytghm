import Foundation

struct Interval {
    var start: Int
    var end: Int
}

func merge(intervals: [Interval]) -> [Interval] {
    // 1. Проверка на пустой вход и наличие обеих границ интервала
    guard intervals.count > 1 else { return intervals }
    
    // 2. Сортировка интервалы по времени начала
    let sortedIntervals = intervals.sorted { $0.start < $1.start }
    
    var result: [Interval] = []
    
    // Создание первого элемента как точки отсчёта
    var currentInterval = sortedIntervals[0]
    
    // Цикл
    for i in 1..<sortedIntervals.count {
        let nextInterval = sortedIntervals[i]
        
        // 3. Проверка перекрытия
        if nextInterval.start <= currentInterval.end {
                    // Расширение текущего интервала при перекрытии
                    currentInterval.end = max(currentInterval.end, nextInterval.end)
                } else {
                    // Сохранение старого интервала и переход к новому, если не перекрываются
                    result.append(currentInterval)
                    currentInterval = nextInterval
                }
            }
    // Добавление последнего интервала
    result.append(currentInterval)
    
    return result
}

let input = [
    Interval(start: 1, end: 3),
    Interval(start: 2, end: 6),
    Interval(start: 8, end: 10),
    Interval(start: 15, end: 18)
]

let output = merge(intervals: input)

// Вывод результата на печать
for interval in output {
    print("[\(interval.start), \(interval.end)]")
}
