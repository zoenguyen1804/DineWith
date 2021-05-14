
import Foundation
import UIKit

class ProfileNavigation {
    func toPreviousScene(currentVC: UIViewController) {
        currentVC.navigationController?.popViewController(animated: true)
    }

    public func presentVerifyProfileScene(_ viewController: UIViewController) {
        viewController.navigationController?.pushViewController(VerifyProfileViewController(), animated: true)
    }
    
    public func presentEditProfileScene(_ viewController: UIViewController) {
        viewController.navigationController?.pushViewController(EditProfileViewController(), animated: true)
    }
    
    public func presentProfileSettingsScene(_ viewController: UIViewController) {
        viewController.navigationController?.pushViewController(ProfileSettingsViewController(), animated: true)
    }
}
