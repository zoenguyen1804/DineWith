
import UIKit

class ProfileSettingsViewController: UIViewController {

    let verifyLabel = Label(text: "VERIFY", size: .xlarge, color: .black)
    
    let findPeopleLabel = Label(text: "FIND PEOPLE", size: .xlarge, color: .black)
    
    let ageRangeLabel = Label(text: "AGE RANGE", size: .large, color: .black)

    let idTextField = BorderTextField(type: .name, placeholder: "ID (REQUIRED)", width: dynamicWidth(320))

    let phoneNumberTextField = BorderTextField(type: .number, placeholder: "PHONE NUMBER (required)", width: dynamicWidth(320))

    let emailTextField = BorderTextField(type: .email, placeholder: "EMAIL (REQUIRED)", width: dynamicWidth(320))

    let verifyButton = Button(title: "Verify", type: .normal, theme: .dark)
    
    let locationTextField = BorderTextField(type: .email, placeholder: "Location", width: dynamicWidth(320))
    
    
    let rangeSlider = UISlider(frame:CGRect(x: 10, y: 100, width: 300, height: 20))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}
