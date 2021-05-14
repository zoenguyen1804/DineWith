

import UIKit

extension ProfileSettingsViewController {
    // MARK: Main Setup

    func setupView() {
        firstSetup()
        
        setupVerifyLabel()
        setupIdTextField()
        setupPhoneNumberTextField()
        setupEmailTextField()
        setupVerifyButton()
        setupFindPeopleLabel()
        setupLocationTextField()
        setupAgeRangeLabel()
        setupRangeSlider()
    }
    
    // MARK: VerifyLabel Setup
    
    func setupVerifyLabel() {
        view.addSubview(verifyLabel)
        
        verifyLabel.translatesAutoresizingMaskIntoConstraints = false
        verifyLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: dynamicHeight(64)).isActive = true
        verifyLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: IdTextField Setup
    
    func setupIdTextField() {
        view.addSubview(idTextField)
        
        idTextField.translatesAutoresizingMaskIntoConstraints = false
        idTextField.topAnchor.constraint(equalTo: verifyLabel.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        idTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: PhoneNumberTextField Setup
    
    func setupPhoneNumberTextField() {
        view.addSubview(phoneNumberTextField)
        
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        phoneNumberTextField.topAnchor.constraint(equalTo: idTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: EmailTextField Setup
    
    func setupEmailTextField() {
        view.addSubview(emailTextField)
        
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: VerifyButton Setup
    
    func setupVerifyButton() {
        view.addSubview(verifyButton)
        
        verifyButton.translatesAutoresizingMaskIntoConstraints = false
        verifyButton.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: dynamicHeight(96)).isActive = true
        verifyButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    // MARK: FindPeopleLabel Setup
    
    func setupFindPeopleLabel() {
        view.addSubview(findPeopleLabel)
        
        findPeopleLabel.translatesAutoresizingMaskIntoConstraints = false
        findPeopleLabel.topAnchor.constraint(equalTo: verifyButton.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        findPeopleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }

    // MARK: LocationTextField Setup
    
    func setupLocationTextField() {
        view.addSubview(locationTextField)
        
        locationTextField.translatesAutoresizingMaskIntoConstraints = false
        locationTextField.topAnchor.constraint(equalTo: findPeopleLabel.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        locationTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: AgeRangeLabel Setup
    
    func setupAgeRangeLabel() {
        view.addSubview(ageRangeLabel)
                
        ageRangeLabel.translatesAutoresizingMaskIntoConstraints = false
        ageRangeLabel.topAnchor.constraint(equalTo: locationTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        ageRangeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }

    
    // MARK: RangeSlider Setup
    
    func setupRangeSlider() {
        view.addSubview(rangeSlider)
        
        rangeSlider.minimumValue = 0
        rangeSlider.maximumValue = 100
        rangeSlider.isContinuous = true
        rangeSlider.tintColor = UIColor.darkGray
        
        rangeSlider.anchorSize(widthValue: dynamicWidth(320), heightValue: dynamicHeight(40))
        
        rangeSlider.translatesAutoresizingMaskIntoConstraints = false
        rangeSlider.topAnchor.constraint(equalTo: ageRangeLabel.bottomAnchor, constant: dynamicHeight(16)).isActive = true
        rangeSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }


}
