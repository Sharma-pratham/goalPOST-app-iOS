//
//  UIViewContollerExt.swift
//  goalpost-app
//
//  Created by Aditya Sharma on 03/05/20.
//  Copyright © 2020 Aditya Sharma. All rights reserved.
//

import UIKit

extension UIViewController {
    func presentDetail(_ viewContollerToPresent: UIViewController) {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromBottom
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewContollerToPresent, animated: false, completion: nil)
        
    }
    func dismissDetail() {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        transition.subtype = CATransitionSubtype.fromBottom
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
        
    }
}
