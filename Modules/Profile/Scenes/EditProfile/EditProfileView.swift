
import UIKit

extension EditProfileViewController {
    
    // MARK: Main Setup

    func setupView() {
        firstSetup()
        
        setupEditInfoLabel()
        setupGenderTextField()
        setupAboutYouLabel()
        setupAboutYouTextField()
        setupJobTitleTextField()
        setupCompanyTextField()
        setupLocationTextField()
        setupInterestTextField()
        setupAgeTextField()
        setupUpdateButton()
    }
    
    // MARK: EditInfoLabel Setup
    
    func setupEditInfoLabel() {
        view.addSubview(editInfoLabel)
        
        editInfoLabel.translatesAutoresizingMaskIntoConstraints = false
        editInfoLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: dynamicHeight(64)).isActive = true
        editInfoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: GenderTextField Setup
    
    func setupGenderTextField() {
        view.addSubview(genderTextField)
        
        genderTextField.translatesAutoresizingMaskIntoConstraints = false
        genderTextField.topAnchor.constraint(equalTo: editInfoLabel.bottomAnchor, constant: dynamicHeight(8)).isActive = true
        genderTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: AboutYouLabel Setup
    
    func setupAboutYouLabel() {
        view.addSubview(aboutYouLabel)
        
        aboutYouLabel.translatesAutoresizingMaskIntoConstraints = false
        aboutYouLabel.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        aboutYouLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: AboutYouTextField Setup

    func setupAboutYouTextField() {
        view.addSubview(aboutYouTextField)
        
        aboutYouTextField.translatesAutoresizingMaskIntoConstraints = false
        aboutYouTextField.topAnchor.constraint(equalTo: aboutYouLabel.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        aboutYouTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }

    // MARK: JobTitleTextField Setup
    
    func setupJobTitleTextField() {
        view.addSubview(jobTitleTextField)
                
        jobTitleTextField.translatesAutoresizingMaskIntoConstraints = false
        jobTitleTextField.topAnchor.constraint(equalTo: aboutYouTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        jobTitleTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }

    // MARK: CompanyTitleTextField Setup
    
    func setupCompanyTextField() {
        view.addSubview(companyTextField)
                
        companyTextField.translatesAutoresizingMaskIntoConstraints = false
        companyTextField.topAnchor.constraint(equalTo: jobTitleTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        companyTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: LocationTextField Setup
    
    func setupLocationTextField() {
        view.addSubview(locationTextField)
                
        locationTextField.translatesAutoresizingMaskIntoConstraints = false
        locationTextField.topAnchor.constraint(equalTo: companyTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        locationTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: InterestTextField Setup
    
    func setupInterestTextField() {
        view.addSubview(interestTextField)
                
        interestTextField.translatesAutoresizingMaskIntoConstraints = false
        interestTextField.topAnchor.constraint(equalTo: locationTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        interestTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: AgeTextField Setup
    
    func setupAgeTextField() {
        view.addSubview(ageTextField)
                
        ageTextField.translatesAutoresizingMaskIntoConstraints = false
        ageTextField.topAnchor.constraint(equalTo: interestTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        ageTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: UpdateButton Setup
    
    func setupUpdateButton() {
        view.addSubview(updateButton)
                
        updateButton.translatesAutoresizingMaskIntoConstraints = false
        updateButton.topAnchor.constraint(equalTo: ageTextField.bottomAnchor, constant: dynamicHeight(30)).isActive = true
        updateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }



    
}
