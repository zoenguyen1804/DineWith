
import UIKit

/// Custom UILabel that comes pre-configured with default custom specifications and attributes.
class Label: UILabel {
    enum labelSize {
        /// FontSize: 12
        case xsmall

        /// FontSize: 14
        case small

        /// FontSize: 16
        case base

        /// FontSize: 18
        case large

        /// FontSize: 24
        case xlarge
        
        /// FontSize: 32
        case xxlarge
    }

    enum labelColor {
        /// FontColor: Black
        case black

        /// FontColor: Blue
        case blue

        /// FontColor: Gray
        case gray

        /// FontColor: Red
        case error

        /// FontColor: White
        case white
    }

    /**
     Initializes a UILabel that has been setup with the app custom specifications and attributes.

     - Parameters:
        - text: The text of the label
        - size: The FontSize of the label
        - color: The color of the label

     - Returns: Label component
    */
    init(text: String!, size labelSize: labelSize = .base, color labelColor: labelColor = .black) {
        super.init(frame: .zero)

        setup(text: text, size: labelSize, color: labelColor)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    /// Setup the main custom attributes of the Label
    fileprivate func setup(text: String!, size labelSize: labelSize, color labelColor: labelColor) {
        self.text = text

        setupLabelSize(size: labelSize)
        setupLabelColor(color: labelColor)
    }

    /// Setup the button according to the `Size` provided.
    fileprivate func setupLabelSize(size labelSize: labelSize) {
        switch labelSize {
        case .xsmall:
            self.font = UIFont(name: "Poppins-SemiBold", size: dynamicFontSize(12))

        case .small:
            self.font = UIFont(name: "Poppins-SemiBold", size: dynamicFontSize(14))

        case .base:
            self.font = UIFont(name: "Poppins-SemiBold", size: dynamicFontSize(16))

        case .large:
            self.font = UIFont(name: "Poppins-SemiBold", size: dynamicFontSize(18))

        case .xlarge:
            self.font = UIFont(name: "Poppins-SemiBold", size: dynamicFontSize(24))
            
        case .xxlarge:
            self.font = UIFont(name: "Poppins-SemiBold", size: dynamicFontSize(32))
        }
    }

    /// Setup the button according to the `Color` provided.
    fileprivate func setupLabelColor(color labelColor: labelColor) {
        switch labelColor {
        case .black:
            self.textColor = UIColor(cgColor: UIColor.FlatColor.Black.cgColor)

        case .blue:
            self.textColor = UIColor(cgColor: UIColor.FlatColor.Blue.ClearBlue.cgColor)

        case .gray:
            let greyColor = UIColor(red: 155, green: 155, blue: 155, alpha: 1).cgColor
            self.textColor = UIColor(cgColor: greyColor)
        case .white:
            self.textColor = .white
        case .error:
            self.textColor = UIColor.FlatColor.Red.ErrorRed
        }
    }
}
