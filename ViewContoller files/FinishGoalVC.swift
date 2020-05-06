//
//  FinishGoalVC.swift
//  goalpost-app
//
//  Created by Aditya Sharma on 06/05/20.
//  Copyright © 2020 Aditya Sharma. All rights reserved.
//

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
        
        
    }
    
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
