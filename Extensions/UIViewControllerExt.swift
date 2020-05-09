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
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController){
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.reveal
        transition.subtype = CATransitionSubtype.fromBottom
        
        guard let presentedViewController = presentedViewController else {return}
        presentedViewController.dismiss(animated: false) {
            self.view.window?.layer.add(transition, forKey: kCATransition)
            self.present(viewControllerToPresent, animated: false, completion: nil)
        }
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
