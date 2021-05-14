

import Foundation
import UIKit

extension UIViewController {
    
    // MARK: Generic UI Setup
    
    func firstSetup() {
        view.backgroundColor = UIColor.white // set background
        setupNavBar()
        setTransparentNavBar()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func setupNavBar() {
//        let arrowImg = UIImage(named: "arrowDown")
//        let rotatedArrow = arrowImg?.rotate(radians: .pi / 2)
//        let button = UIButton(type: .system)
//
//        button.setImage(rotatedArrow, for: .normal)
//        button.addTarget(self, action: #selector(backButtonPressed(sender:)), for: UIControl.Event.touchUpInside)

        self.navigationController?.navigationBar.tintColor = .black
//        self.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
    }
    
    func setTransparentNavBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.isTranslucent = true
        self.navigationController?.view.backgroundColor = .clear
    }
        
    // MARK: Actions
    
    @objc func backButtonPressed(sender: UIBarButtonItem!) {
//        if self is PhoneRequestOtpPageController {
//            alertWithChoices(title: "Do you wish to quit?", alertMsg: "This will log you out.", currentVC: self)
//        } else {
//            toPreviousPage(currentVC: self)
//        }

        self.navigationController?.popViewController(animated: true)
//        self.navigationController?.popToRootViewController(animated: true)
    }
    
    @objc func skipButtonPressed(sender: UIBarButtonItem!) {
//        alertSkipSetup(title: "Do you wish to skip the setup?", alertMsg: "", currentVC: self)
    }
    
    @objc func dismissKeyboard() {
        
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
}
