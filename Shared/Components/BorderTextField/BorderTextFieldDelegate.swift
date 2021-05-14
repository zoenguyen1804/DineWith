
import UIKit

class BorderTextFieldDelegate: NSObject, UITextFieldDelegate {
    static let sharedInstance: BorderTextFieldDelegate = BorderTextFieldDelegate()

    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.frame.size.height = dynamicHeight(25.0)

        textField.setBottomBorder(borderColor: UIColor.FlatColor.Blue.ClearBlue)
        textField.becomeFirstResponder()
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.frame.size.height = dynamicHeight(25.0)

        textField.setBottomBorder(borderColor: UIColor.FlatColor.Gray.LightGray)
        textField.resignFirstResponder()
    }
}

class SetBorderTextFieldDelegate: NSObject, UITextFieldDelegate {
    static let sharedInstance: SetBorderTextFieldDelegate = SetBorderTextFieldDelegate()

    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.frame.size.height = dynamicHeight(25.0)

        textField.setBottomBorder(borderColor: UIColor.FlatColor.Blue.ClearBlue)
        textField.becomeFirstResponder()

        if textField.text == "0.0" || textField.text == "0" {
            textField.text = String()
        }
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.frame.size.height = dynamicHeight(25.0)

        textField.setBottomBorder(borderColor: UIColor.FlatColor.Gray.LightGray)
        textField.resignFirstResponder()

        if textField.text == "" {
            textField.text = "0"
        }
    }

    //Textfield delegates
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool { // return NO to not change text

        switch string {
        case "0","1","2","3","4","5","6","7","8","9":
            return true
        case ".":
            let array = Array(textField.text!)
            var decimalCount = 0
            for character in array {
                if character == "." {
                    decimalCount += 1
                }
            }

            if decimalCount == 1 {
                return false
            } else {
                return true
            }
        default:
            let array = Array(string)
            if array.count == 0 {
                return true
            }
            return false
        }
    }

}
