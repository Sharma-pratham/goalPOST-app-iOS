import UIKit

class GoalsVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


    @IBAction func addGoal(_ sender: Any) {
        guard let createGoalVC = storyboard?.instantiateViewController(withIdentifier: "CreateGoalVC") else {
            return
        }
        presentDetail(createGoalVC)
       }
       
}

extension GoalsVC: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
           return 1
       }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "goalCell") as? goalCell else {
            return UITableViewCell()
        }
        cell.configureCell(description: "Eat salad 2 a week",type: .shortTerm, goalProgressAmount: 2)
        return cell
        
    }
    
   
    
}
