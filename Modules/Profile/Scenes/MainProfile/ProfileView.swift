
import Foundation
import UIKit

extension ProfileViewController {
    
    // MARK: Main Setup
    
    func setupView() {
        firstSetup()
        
        setupProfileTitleLabel()
        setupProfileImageView()
        setupNameAgeLabel()
        setupOccupationLabel()
        setupVerifiedBadge()
        setupMenuStackView()
    }
    
    // MARK: ProfileTitleLabel Setup
        
    func setupProfileTitleLabel() {
        view.addSubview(profileTitleLabel)
        profileTitleLabel.textAlignment = .center
        profileTitleLabel.translatesAutoresizingMaskIntoConstraints = false

        profileTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: dynamicHeight(45)).isActive = true
        profileTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // MARK: ProfileImageView Setup
    
    func setupProfileImageView() {
        view.addSubview(profileImageView)
                
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        profileImageView.topAnchor.constraint(equalTo: profileTitleLabel.bottomAnchor, constant: dynamicHeight(90)).isActive = true
        profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // MARK: NameAgeLabel Setup
    
    func setupNameAgeLabel() {
        view.addSubview(nameAgeLabel)
        
        nameAgeLabel.translatesAutoresizingMaskIntoConstraints = false
        nameAgeLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: dynamicHeight(90)).isActive = true
        nameAgeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // MARK: OccupationLabel Setup

    func setupOccupationLabel() {
        view.addSubview(occupationLabel)
        
        occupationLabel.translatesAutoresizingMaskIntoConstraints = false
        occupationLabel.topAnchor.constraint(equalTo: nameAgeLabel.bottomAnchor).isActive = true
        occupationLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }

    // MARK: VerifiedBadge Setup
    
    func setupVerifiedBadge() {
        view.addSubview(verifiedBadgeButton)
        
        verifiedBadgeButton.translatesAutoresizingMaskIntoConstraints = false
        verifiedBadgeButton.topAnchor.constraint(equalTo: nameAgeLabel.topAnchor, constant: dynamicHeight(4)).isActive = true
        verifiedBadgeButton.leadingAnchor.constraint(equalTo: nameAgeLabel.trailingAnchor, constant: dynamicHeight(4)).isActive = true
    }
    
    // MARK: Menu Setup
    
    func setupMenuStackView() {
        view.addSubview(menuStackView)
        
        menuStackView.alignment = .center
        menuStackView.distribution = .fillEqually
        
        menuStackView.translatesAutoresizingMaskIntoConstraints = false
        menuStackView.anchorSize(widthValue: view.frame.width - dynamicWidth(32), heightValue: dynamicHeight(128))
        menuStackView.topAnchor.constraint(equalTo: occupationLabel.bottomAnchor, constant: dynamicHeight(64)).isActive = true
        menuStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        menuStackView.addArrangedSubview(settingButton)
        menuStackView.addArrangedSubview(addProfilePictureButton)
        menuStackView.addArrangedSubview(editInfoButton)
    }
    
}
