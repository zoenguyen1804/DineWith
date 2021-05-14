

import UIKit

class EditProfileViewController: UIViewController {

    let editInfoLabel = Label(text: "EDIT INFO", size: .xlarge, color: .black)
    
    let aboutYouLabel = Label(text: "About you", size: .xlarge, color: .black)

    let genderTextField = BorderTextField(type: .name, placeholder: "Gender", width: dynamicWidth(320))

    let aboutYouTextField = BorderTextField(type: .name, placeholder: "About you", width: dynamicWidth(320))

    let jobTitleTextField = BorderTextField(type: .name, placeholder: "Job title (required)", width: dynamicWidth(320))
    
    let companyTextField = BorderTextField(type: .name, placeholder: "Company (required)", width: dynamicWidth(320))

    let locationTextField = BorderTextField(type: .name, placeholder: "Location (required)", width: dynamicWidth(320))
    
    let interestTextField = BorderTextField(type: .name, placeholder: "Interests (required)", width: dynamicWidth(320))
    
    let ageTextField = BorderTextField(type: .number, placeholder: "Age (required)", width: dynamicWidth(320))
    
    let updateButton = Button(title: "Update Info", type: .normal, theme: .dark)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
}
