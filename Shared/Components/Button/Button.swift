
import UIKit

/// Custom UIButton that comes pre-configured with default custom specifications and attributes.
class Button: UIButton {
    enum BtnType {
        /// CornerRadius: 2.0
        case normal

        /// CornerRadius: 20.0
        case rounded
    }

    enum ButtonTheme {
        /// BackgroundColor: Blue
        case blue

        /// BackgroundColor: DarkGray
        case dark

        /// BackgroundColor: White
        case white

        /// BackgroundColor: Red
        case red

        /// BackgroundColor: Green
        case green

        /// BackgroundColor: Orange
        case orange
    }

    /// The width of the Button
    private let width: CGFloat = dynamicWidth(270.0)

    /// The height of the Button
    private let height: CGFloat = dynamicWidth(40.0)

    /**
     Initializes a UIButton that has been setup with the app custom specifications and attributes.

     - Parameters:
         - title: The title of the Button
         - type: The type of the Button
         - theme: The theme of the Button

     - Returns: Button component

     */
    init(
        title: String,
        type ButtonType: BtnType,
        theme ButtonTheme: ButtonTheme,
        isShadowEnabled: Bool? = false
    ) {
        super.init(frame: .zero)
        setupButton(title: title, type: ButtonType, theme: ButtonTheme, isShadowEnabled: isShadowEnabled!)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// Setup the main custom attributes of the Button
    fileprivate func setupButton(
        title: String,
        type ButtonType: BtnType,
        theme ButtonTheme: ButtonTheme,
        isShadowEnabled: Bool
    ) {
        self.setTitle(title, for: .normal)
        self.titleLabel?.font = UIFont(name: "Poppins-SemiBold", size: dynamicFontSize(16))

        // Sizing
        self.frame.size.width = width
        self.frame.size.height = height

        self.anchorSize(widthValue: width, heightValue: height)

        self.tintColor = .white
        
        setupType(type: ButtonType)
        setupTheme(theme: ButtonTheme, isShadowEnabled: isShadowEnabled)
    }

    /// Setup the button according to the `Type` provided.
    fileprivate func setupType(type ButtonType: BtnType) {
        switch ButtonType {
        case .normal:
            self.layer.cornerRadius = dynamicHeight(2.0)
        case .rounded:
            self.layer.cornerRadius = dynamicHeight(20.0)
        }
    }

    /// Setup the button according to the `Theme` provided.
    fileprivate func setupTheme(theme ButtonTheme: ButtonTheme, isShadowEnabled: Bool) {
        switch ButtonTheme {
        case .blue:
            self.backgroundColor = UIColor.FlatColor.Blue.ClearBlue
            if isShadowEnabled {
                self.layer.applySketchShadow(color: UIColor.FlatColor.Blue.ShadowBlue, alpha: 50, x: 0, y: 2, blur: 4, spread: 0)
            }
        case .dark:
            self.backgroundColor = UIColor.FlatColor.Gray.DimGray
            if isShadowEnabled {
                self.layer.applySketchShadow(color: UIColor.FlatColor.Gray.ShadowGray, alpha: 50, x: 0, y: 2, blur: 4, spread: 0)
            }
        case .white:
            self.backgroundColor = .white
            if isShadowEnabled {
                self.layer.applySketchShadow(color: UIColor.FlatColor.Gray.ShadowGray, alpha: 50, x: 0, y: 2, blur: 4, spread: 0)
            }
        case .red:
            self.backgroundColor = UIColor.FlatColor.Red.ClearRed
            if isShadowEnabled {
                self.layer.applySketchShadow(color: UIColor.FlatColor.Red.ShadowRed, alpha: 50, x: 0, y: 2, blur: 4, spread: 0)
            }
        case .green:
            self.backgroundColor = UIColor.FlatColor.Green.ClearGreen
            if isShadowEnabled {
                self.layer.applySketchShadow(color: UIColor.FlatColor.Green.ShadowGreen, alpha: 50, x: 0, y: 2, blur: 4, spread: 0)
            }
        case .orange:
            self.backgroundColor = UIColor.FlatColor.Orange.ClearOrange
            if isShadowEnabled {
                self.layer.applySketchShadow(color: UIColor.FlatColor.Orange.ShadowOrange, alpha: 50, x: 0, y: 2, blur: 4, spread: 0)
            }
        }
    }
}
