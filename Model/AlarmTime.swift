import Foundation
struct AlarmTime {
    var cycle: Int
    var date: Date
    var needTimeToFallAsleep: Int?
    var type: AlarmTimeType
}
enum AlarmTimeType {
    case toTime
    case fromNow
}
