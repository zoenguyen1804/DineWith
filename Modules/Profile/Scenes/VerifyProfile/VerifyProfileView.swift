
import UIKit

extension VerifyProfileViewController {
    // MARK: Main Setup
    
    func setupView() {
        firstSetup()
        
        setupProfileImageView()
        setupGetVerifiedLabel()
        setupGetVerifiedDescriptionLabel()
        setupGetVerifiedButton()
        setupLaterButton()
    }

    // MARK: ProfileImageView Setup
    
    func setupProfileImageView() {
        view.addSubview(profileImageView)
                
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: dynamicHeight(135)).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // MARK: GetVerifiedLabel Setup
    
    func setupGetVerifiedLabel() {
        view.addSubview(getVerifiedLabel)
        
        getVerifiedLabel.translatesAutoresizingMaskIntoConstraints = false
        getVerifiedLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: dynamicHeight(90)).isActive = true
        getVerifiedLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // MARK: GetVerifiedDescription Setup

    func setupGetVerifiedDescriptionLabel() {
        view.addSubview(getVerifiedDescription)
        getVerifiedDescription.numberOfLines = 4
        getVerifiedDescription.preferredMaxLayoutWidth = 300
        getVerifiedDescription.lineBreakMode = .byWordWrapping
        getVerifiedDescription.sizeToFit()
        getVerifiedDescription.setLineHeight(lineHeight: 6)
        
        getVerifiedDescription.translatesAutoresizingMaskIntoConstraints = false
        getVerifiedDescription.anchorSize(widthValue: view.frame.width - dynamicWidth(64), heightValue: dynamicHeight(150))
        getVerifiedDescription.topAnchor.constraint(equalTo: getVerifiedLabel.topAnchor, constant: dynamicHeight(16)).isActive = true
        getVerifiedDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // MARK: GetVerifiedButton Setup
    
    func setupGetVerifiedButton() {
        view.addSubview(getVerifiedButton)
        
        getVerifiedButton.translatesAutoresizingMaskIntoConstraints = false
        getVerifiedButton.topAnchor.constraint(equalTo: getVerifiedDescription.bottomAnchor, constant: dynamicHeight(90)).isActive = true
        getVerifiedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    // MARK: LaterButton Setup

    func setupLaterButton() {
        view.addSubview(laterButton)
        
        laterButton.translatesAutoresizingMaskIntoConstraints = false
        laterButton.topAnchor.constraint(equalTo: getVerifiedButton.bottomAnchor, constant: dynamicHeight(16)).isActive = true
        laterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    
}
