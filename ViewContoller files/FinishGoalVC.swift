import UIKit

class FinishGoalVC: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var CreateGoalBtn: UIButton!
    
    @IBOutlet weak var pointsTxtField: UITextField!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    
    func initData(description: String, type: GoalType) {
        
        self.goalDescription = description
        self.goalType = type
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CreateGoalBtn.bindToKeyboard()
        pointsTxtField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func CreateGoalBtnWasPressed(_ sender: Any) {
         if pointsTxtField.text != "" {
                self.save{
                    (complete) in
                    if complete {
                        dismiss(animated: true, completion: nil)
                    }
                }
        }
        
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else{return}
        let goal = Goal(context: managedContext)
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTxtField.text!)!
        goal.goalProgress = Int32(0)
        
        do {
            try managedContext.save()
            completion(true)
        }
        catch {
            debugPrint("Could Not Save : \(error.localizedDescription)")
            completion(false)
        }
    }
    
    

}
