import UIKit

var str = "Hello, playground"

// Реализуйте программу, которая вернет реакцию пользователя в зависимости от погоды на улице
// Используйте перечисления с ассоциативными значениями и значениями по умолчанию
// А также функции!!!
// Результат выведите в консоль


enum Weather {
    enum Rain: String {
        case noRain = "It is no rain"
        case rain = "It is raining"
        case snow = "It is snow"
    }
    case good(temp: Int, wet: Rain)
    case normal(temp: Int, wet: Rain)
    case bad(temp:Int, wet: Rain)
}
func takeUmbrella(argument: Weather) -> String {
    var result: String = ""
    switch argument {
    case .good(let temp, let wet):
        result = "\(wet.rawValue) take umbrella, be happy"
    case .normal(let temp, let wet):
        result = "\(wet.rawValue) take umbrella, put on hat"
    case .bad(let temp, let wet):
        result = "\(wet.rawValue) put on good"
    }
    return result
}

let myReaction = Weather.good(temp: 5, wet: .rain)
print(takeUmbrella(argument: myReaction))

func whatIsTemp(argument: Weather) -> String {
    var result2: String = ""
    switch argument {
    case .good(temp: 15...30, wet: .noRain):
        result2 = "Very Fine! Ready to walk"
    case .good(temp: 15...30, wet: .rain):
        result2 = "Nice weather! Ready to walk with umbrella"
    case .normal(temp: 0...14, wet: .noRain):
        result2 = "It is ok outside! Possible walk with hat."
    case .normal(temp: 0...10, wet: .rain):
        result2 = "Possible walk with hat and umbrella"
    case .bad(temp: -10 ... -1, wet: .noRain):
        result2 = "Great! Put on very good and go skiing"
    case .bad(temp: -10 ... -1, wet: .snow):
        result2 = "Beautiful! Put on very good and go sleigh"

    default:
        result2 = ("Better stay at home")
        
    }
    return result2
}


let my2Reaction = Weather.good(temp: -15, wet: .noRain)
print(whatIsTemp(argument: my2Reaction))
