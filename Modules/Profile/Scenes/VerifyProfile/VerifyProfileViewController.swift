
import UIKit

class VerifyProfileViewController: UIViewController {
    let navigation = ProfileNavigation()
    
    let profileImageView: ProfileImageView = ProfileImageView()
    
    let getVerifiedLabel: Label = Label(text: "GET VERIFIED", size: .xlarge, color: .black)
    
    let getVerifiedDescription: Label = Label(text: "Take 1 selfie to prove that your profile picture is real (we will not share your picture, we will just keep them for future re-verification)", size: .small, color: .black)
    
    let getVerifiedButton: Button = Button(title: "Get Verified", type: .normal, theme: .dark)

    let laterButton: Button = {
        let button = Button(title: "Later", type: .normal, theme: .dark)
        button.addTarget(self, action: #selector(laterButtonPressed(sender:)), for: UIControl.Event.touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    // Button Logic
    
    @objc func laterButtonPressed(sender: UIButton!) {
        navigation.toPreviousScene(currentVC: self)
    }

}
