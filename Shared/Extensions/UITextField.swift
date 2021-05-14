

import Foundation
import UIKit

extension UITextField {
    
    func setBottomBorder(borderColor: UIColor) {
//        self.borderStyle = UITextField.BorderStyle.none
//        self.backgroundColor = .clear

        let borderLine = UIView()
        let height = 1.0
        borderLine.frame = CGRect(x: 0, y: Double(self.frame.height) - height, width: Double(self.frame.width), height: height)

        borderLine.backgroundColor = borderColor
        self.addSubview(borderLine)
    }

    func setTextField(placehold: String="") {
        
        self.backgroundColor = .white
        self.tintColor = .black
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.placeholder = placehold
        self.clearButtonMode = UITextField.ViewMode.whileEditing
        
        if self.placeholder == "EMAIL" || self.placeholder == "PASSWORD (MIN. 8 CHARACTERS)" {
            self.autocapitalizationType = .none
            self.autocorrectionType = .no
            self.returnKeyType = .go
        }
        
        if self.placeholder == "PASSWORD (MIN. 8 CHARACTERS)" {
            self.isSecureTextEntry = true
        }
    }
}
