

import UIKit

class RestaurantHorizontalStackView: UIView {
    
    enum RestaurantStackType {
        case nearby
        case location
    }

    var text: String
    var restaurants: [Restaurant]
    var restaurantType: RestaurantStackType

    init(frame: CGRect, t: String, restaurants: [Restaurant], restaurantType: RestaurantStackType) {
        self.text = t
        self.restaurants = restaurants
        self.restaurantType = restaurantType
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupView() {
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupPinWithText()
        setupShowAllLabel()
        setupRestaurantStackView()
    }
    
    func setupPinWithText() {
        let pinWithText: LocationPinWithText = {
            let pinWithText = LocationPinWithText(frame: CGRect(x: 0, y: 0, width: 200, height: 32), t: text)
            pinWithText.backgroundColor = .red
            return pinWithText
        }()
        
        self.addSubview(pinWithText)

        pinWithText.translatesAutoresizingMaskIntoConstraints = false
        pinWithText.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        pinWithText.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
    
    func setupShowAllLabel() {
        let showAllLabel = Label(text: "show all", size: .base, color: .black)
        
        self.addSubview(showAllLabel)
        
        showAllLabel.translatesAutoresizingMaskIntoConstraints = false
        showAllLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        showAllLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: dynamicWidth(-32)).isActive = true
    }
    
    func setupRestaurantStackView() {
        let restaurantStackView = UIStackView()
        
        self.addSubview(restaurantStackView)

        restaurantStackView.translatesAutoresizingMaskIntoConstraints = false
        restaurantStackView.anchorSize(widthValue: self.frame.width, heightValue: self.frame.height)
        restaurantStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: dynamicHeight(4)).isActive = true
        
        restaurantStackView.distribution = .equalSpacing
        
        for restaurant in restaurants {
            let restaurantImageView: UIImageView = {
                let imageView = UIImageView()
                let image = UIImage(named: restaurant.imageName)
                imageView.image = image
                imageView.contentMode = .scaleAspectFit
                imageView.translatesAutoresizingMaskIntoConstraints = false
                imageView.frame.size.width = dynamicWidth(100)
                imageView.frame.size.height = dynamicHeight(100)
                imageView.anchorSize(widthValue: dynamicWidth(100), heightValue: dynamicHeight(100))
                return imageView
            }()
            
            restaurantStackView.addArrangedSubview(restaurantImageView)
        }
    }
    
    // MARK: Setup different restaurant types
    
    func setupRestaurantView(restaurant: Restaurant, type: RestaurantStackType) {
        let restaurantView = UIView()
                
        let restaurantImageView: UIImageView = {
            let imageView = UIImageView()
            let image = UIImage(named: restaurant.imageName)
            imageView.image = image
            imageView.contentMode = .scaleAspectFit
            imageView.translatesAutoresizingMaskIntoConstraints = false
            imageView.frame.size.width = dynamicWidth(100)
            imageView.frame.size.height = dynamicHeight(100)
            imageView.anchorSize(widthValue: dynamicWidth(100), heightValue: dynamicHeight(100))
            return imageView
        }()
        
        restaurantView.addSubview(restaurantImageView)
        
        switch type {
        case .nearby:
            setupNearbyRestaurantTextView()
        case .location:
            setupLocationTextView()
        }
    }

    func setupNearbyRestaurantTextView() {
        // TODO: @Zoe
    }
    
    func setupLocationTextView() {
        // TODO: @Zoe
    }
}
