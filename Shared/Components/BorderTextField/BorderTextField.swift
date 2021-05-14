
import UIKit

class BorderTextField: UITextField {
    enum TextFieldType {
        case email
        case password
        case name
        case number
    }

    fileprivate let type: TextFieldType
    private let errorLabel = Label(text: "", size: .xsmall, color: .error)

    init(type TextFieldType: TextFieldType, placeholder: String, width: CGFloat) {
        self.type = TextFieldType
        super.init(frame: .zero)

        delegate = BorderTextFieldDelegate.sharedInstance

        setup(type: TextFieldType, placeholder: placeholder, width: width)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setup(type: TextFieldType, placeholder: String, width: CGFloat) {
        self.font = UIFont(name: "SourceSansPro-Semibold", size: dynamicFontSize(16))

        self.translatesAutoresizingMaskIntoConstraints = false
        self.placeholder = placeholder

        // Sizing
        self.frame.size.width = width
        self.frame.size.height = dynamicHeight(25.0)

        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: dynamicHeight(25.0)).isActive = true

        // Bottom Border
        self.setBottomBorder(borderColor: UIColor.FlatColor.Gray.LightGray)

        // Additional configurations
        switch type {
        case .email:
            setupEmailTextField()
        case .password:
            setupPasswordTextField()
        case .name:
            setupNameTextField()
        case .number:
            setupNumberTextField()
        }

        // Handle Error Message
        errorLabel.frame = CGRect(x: 0.0, y: Double(dynamicHeight(25.0)), width: Double(self.frame.width), height: Double(dynamicHeight(25.0)))
        errorLabel.isHidden = true

        self.addSubview(errorLabel)

    }

    private func setupNormalTextField() {
        self.keyboardType = .default
    }

    private func setupEmailTextField() {
        self.keyboardType = .emailAddress
        self.autocapitalizationType = .none
        self.autocorrectionType = .no
        self.returnKeyType = .go
    }

    private func setupPasswordTextField() {
        self.isSecureTextEntry = true
        self.autocapitalizationType = .none
        self.autocorrectionType = .no
        self.returnKeyType = .go
    }

    private func setupNameTextField() {
        self.autocapitalizationType = .words
    }

    private func setupNumberTextField() {
        self.keyboardType = .numberPad
        self.returnKeyType = .next
        self.autocorrectionType = .no
    }

    private func setupWeightTextField() {
        self.keyboardType = .decimalPad
        self.returnKeyType = .next
        self.autocorrectionType = .no
    }

    func showError(errorMessage: String!) {
        self.frame.size.height = dynamicHeight(25.0)
        self.setBottomBorder(borderColor: UIColor.FlatColor.Red.ErrorRed)

        errorLabel.text = errorMessage
        errorLabel.isHidden = false
    }

    func hideError() {
        self.setBottomBorder(borderColor: UIColor.FlatColor.Gray.LightGray)
        errorLabel.isHidden = true
    }
}
