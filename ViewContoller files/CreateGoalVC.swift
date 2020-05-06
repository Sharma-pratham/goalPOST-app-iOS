import UIKit

class CreateGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var goalTextView: UITextView!
    
    @IBOutlet weak var shortTermBtn: UIButton!
    
    @IBOutlet weak var longTermbtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    var goaltype: GoalType = .shortTerm
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextBtn.bindToKeyboard()
        shortTermBtn.setSelectedColor()
        longTermbtn.setDeslectedColor()
        goalTextView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnpressed(_ sender: Any) {
        if goalTextView.text != "" && goalTextView.text != "What is your goal?" {
            guard let finishgoalVC = storyboard?.instantiateViewController(withIdentifier: "FinishGoalVC") as? FinishGoalVC else {
                return
            }
            finishgoalVC.initData(description: goalTextView.text, type: goaltype)
            presentDetail(finishgoalVC)
        }
    }
    
    @IBAction func shortBtnPressed(_ sender: Any) {
        goaltype = .shortTerm
        shortTermBtn.setSelectedColor()
        longTermbtn.setDeslectedColor()
        
    }
    
    @IBAction func longBtnPressed(_ sender: Any) {
        goaltype = .longTerm
        shortTermBtn.setDeslectedColor()
        longTermbtn.setSelectedColor()
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        goalTextView.text = ""
        goalTextView.textColor = #colorLiteral(red: 0.4402363579, green: 0, blue: 0.3010299827, alpha: 1)
    }
    
}
