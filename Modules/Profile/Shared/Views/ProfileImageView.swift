
import Foundation
import UIKit

class ProfileImageView: UIView {
    public var parentViewController: UIViewController?
    private let navigation = ProfileNavigation()

    private let profileImageView: UIImageView = {
        let imageView = UIImageView()
        let image = UIImage(named: "ProfileImage")
        imageView.image = image
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.frame.size.width = dynamicWidth(150)
        imageView.frame.size.height = dynamicHeight(150)
        imageView.anchorSize(widthValue: dynamicWidth(150), heightValue: dynamicHeight(150))
        imageView.setRounded()
        return imageView
    }()

    private let verifiedBadgeButton: UIButton = {
        let button = UIButton(type: .custom)
        let verifiedBadgeImage = UIImage(named: "VerifiedBadge")
        button.setImage(verifiedBadgeImage, for: .normal)
        return button
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Property func
    
    public func setParentViewController(vc: UIViewController) {
        self.parentViewController = vc
    }
    
    // MARK: UI Setup
    
    private func setupView() {
        setupProfileImageView()
        setupVerifiedBadgeButton()
    }
    
    fileprivate func setupProfileImageView() {
        self.addSubview(profileImageView)

        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        profileImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    fileprivate func setupVerifiedBadgeButton() {
        self.addSubview(verifiedBadgeButton)
        
        verifiedBadgeButton.translatesAutoresizingMaskIntoConstraints = false
        verifiedBadgeButton.frame.size.width = dynamicWidth(32)
        verifiedBadgeButton.frame.size.height = dynamicHeight(32)
        verifiedBadgeButton.anchorSize(widthValue: dynamicWidth(32), heightValue: dynamicHeight(32))
        verifiedBadgeButton.topAnchor.constraint(equalTo: profileImageView.topAnchor).isActive = true
        verifiedBadgeButton.leadingAnchor.constraint(equalTo: profileImageView.trailingAnchor, constant: dynamicHeight(-32)).isActive = true
    }
}
