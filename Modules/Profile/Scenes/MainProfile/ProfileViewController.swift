
import UIKit

class ProfileViewController: UIViewController {
    let navigation = ProfileNavigation()
    
    let profileImageView: ProfileImageView = ProfileImageView()
    
    let profileTitleLabel: Label = Label(text: "Profile", size: .xlarge, color: .black)
    
    let nameAgeLabel: Label = Label(text: "THUY, 25", size: .large, color: .black)
    
    let occupationLabel: Label = Label(text: "STUDENT", size: .large, color: .black)
    
    let verifiedBadgeButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "VerifiedBadge"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.frame.size.width = dynamicWidth(16)
        button.frame.size.height = dynamicHeight(16)
        button.anchorSize(widthValue: dynamicWidth(16), heightValue: dynamicHeight(16))
        button.addTarget(self, action: #selector(verifiedBadgePressed(sender:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    let menuStackView: UIStackView = UIStackView()
    
    let settingButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "Settings"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageView?.contentMode = .scaleToFill
        button.addTarget(self, action: #selector(settingButtonPressed(sender:)), for: UIControl.Event.touchUpInside)

        return button
    }()
    
    let addProfilePictureButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "AddProfilePhoto"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageView?.contentMode = .scaleToFill
        return button
    }()
    
    let editInfoButton: UIButton = {
        let button = UIButton(type: .custom)
        button.setImage(UIImage(named: "EditInfo"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.imageView?.contentMode = .scaleToFill
        button.addTarget(self, action: #selector(editInfoButtonPressed(sender:)), for: UIControl.Event.touchUpInside)

        return button
    }()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileImageView.setParentViewController(vc: self)
        profileImageView.isUserInteractionEnabled = true
        
        setupView()
    }
    
    // Button Logic
    
    @objc func verifiedBadgePressed(sender: UIButton!) {
        navigation.presentVerifyProfileScene(self)
    }

    @objc func editInfoButtonPressed(sender: UIButton!) {
        navigation.presentEditProfileScene(self)
    }
    
    @objc func settingButtonPressed(sender: UIButton!) {
        navigation.presentProfileSettingsScene(self)
    }
}
