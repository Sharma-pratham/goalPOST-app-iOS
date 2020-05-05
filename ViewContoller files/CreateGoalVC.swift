//
//  CreateGoalVC.swift
//  goalpost-app
//
//  Created by Aditya Sharma on 03/05/20.
//  Copyright © 2020 Aditya Sharma. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    
    @IBOutlet weak var shortTermBtn: UIButton!
    
    @IBOutlet weak var longTermbtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnpressed(_ sender: Any) {
    }
    
    @IBAction func shortBtnPressed(_ sender: Any) {
    }
    
    @IBAction func longBtnPressed(_ sender: Any) {
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        dismissDetail()
    }
    
}
