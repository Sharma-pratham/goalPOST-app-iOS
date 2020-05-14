import UIKit

class goalCell: UITableViewCell {

    @IBOutlet weak var goalDescription: UILabel!
    @IBOutlet weak var goalType: UILabel!
    @IBOutlet weak var goalProgress: UILabel!
    
    
    func configureCell(description: String, type: GoalType , goalProgressAmount: Int) {
        self.goalDescription.text = description
        self.goalType.text = type.rawValue
        self.goalProgress.text = String(describing: goalProgressAmount)
    }

}
