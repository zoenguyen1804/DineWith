
import UIKit

class LocationPinWithText: UIView {
    var text: String
    
    init(frame:  CGRect, t: String) {
        self.text = t
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        let locationPinImageView: UIImageView = {
            let imageView = UIImageView()
            let image = UIImage(named: "location-pin")
            imageView.image = image
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.frame.size.width = dynamicWidth(18)
            imageView.frame.size.height = dynamicHeight(18)
            imageView.anchorSize(widthValue: dynamicWidth(18), heightValue: dynamicHeight(18))
            return imageView
        }()
        
        let textLabel: Label = Label(text: text, size: .base, color: .black)
        
        self.addSubview(locationPinImageView)
        self.addSubview(textLabel)
        
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.topAnchor.constraint(equalTo: locationPinImageView.topAnchor, constant: dynamicHeight(-2)).isActive = true
        textLabel.leadingAnchor.constraint(equalTo: locationPinImageView.trailingAnchor, constant: dynamicHeight(4)).isActive = true
    }
    
    
}
