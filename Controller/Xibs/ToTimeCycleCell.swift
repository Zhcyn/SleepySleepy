import UIKit
class ToTimeCycleCell: UITableViewCell {
    @IBOutlet weak var cycleLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setupUI(time: Date, index: Int) {
        cycleLbl.text = "Cycles: \(6 - index)"
        hoursLbl.text = foundSleepyHours(index: index)
        timeLbl.text = getStringFromDate(time)
    }
    func foundSleepyHours(index: Int) -> String {
        let time = 1.5 * (6 - Double(index))
        if floor(time) == time {
            return "\(Int(time)) sleepy hours"
        } else {
            return "\(time) sleepy hours"
        }
    }
}
