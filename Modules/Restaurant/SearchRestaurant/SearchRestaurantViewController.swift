
import UIKit

class SearchRestaurantViewController: UIViewController {

    let singaporePinWithText: LocationPinWithText = {
        let pinWithText = LocationPinWithText(frame: CGRect(x: 0, y: 0, width: 200, height: 32), t: "SINGAPORE")
        return pinWithText
    }()
        
    let dineWithLabel = Label(text: "DineWith", size: .xlarge, color: .black)
    
    let searchTextField = BorderTextField(type: .name, placeholder: "Discovery" , width: dynamicWidth(320))
    
    var nearbyRestaurantStackView: RestaurantHorizontalStackView? = nil
    
    var locationRestaurantStackView: RestaurantHorizontalStackView? = nil
    
    var cuisineRestaurantStackView: RestaurantHorizontalStackView? = nil
    
    let nearbyRestaurants: [Restaurant] = [
        Restaurant(name: "Chicken Rice", imageName: "ChinaTown", numberOfReviews: 10, location: "China Town", rating: 4.8),
        Restaurant(name: "Herbal Tea", imageName: "RafflesPlace", numberOfReviews: 5, location: "Raffles Place", rating: 4.2),
        Restaurant(name: "Ayam", imageName: "LittleIndia",
                   numberOfReviews: 3, location: "Little India", rating: 3.7)
    ]
    
    let locationRestaurants: [Restaurant] = [
        Restaurant(name: "Chicken Rice", imageName: "ChinaTown", numberOfReviews: 10, location: "China Town", rating: 4.8),
        Restaurant(name: "Herbal Tea", imageName: "RafflesPlace", numberOfReviews: 5, location: "Raffles Place", rating: 4.2),
        Restaurant(name: "Ayam", imageName: "LittleIndia", numberOfReviews: 3, location: "Little India", rating: 3.7)
    ]
    
    let cuisinesRestaurants: [Restaurant] = [
        Restaurant(name: "Chicken Rice", imageName: "ChinaTown", numberOfReviews: 10, location: "China Town", rating: 4.8),
        Restaurant(name: "Herbal Tea", imageName: "RafflesPlace", numberOfReviews: 5, location: "Raffles Place", rating: 4.2),
        Restaurant(name: "Ayam", imageName: "LittleIndia", numberOfReviews: 3, location: "Little India", rating: 3.7),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
}
