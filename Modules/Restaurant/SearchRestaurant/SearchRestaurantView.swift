

import UIKit

extension SearchRestaurantViewController {
    // MARK: Main Setup
    
    func setupView() {
        firstSetup()
        setupLocationPinImageView()
        setupDineWithLabel()
        setupSearchTextField()
        setupNearbyRestaurantStackView()
        setupLocationRestaurantStackView()
        setupCuisineRestaurantStackView()
    }
    
    // MARK: LocationPinImageView Setup
    
    func setupLocationPinImageView() {
        view.addSubview(singaporePinWithText)
        
        singaporePinWithText.translatesAutoresizingMaskIntoConstraints = false
        singaporePinWithText.topAnchor.constraint(equalTo: view.topAnchor, constant: dynamicHeight(32)).isActive = true
        singaporePinWithText.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: DineWithLabel Setup
    
    func setupDineWithLabel() {
        view.addSubview(dineWithLabel)
        
        dineWithLabel.center = view.center
        dineWithLabel.textAlignment = .center
        dineWithLabel.translatesAutoresizingMaskIntoConstraints = false
        dineWithLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: dynamicHeight(32)).isActive = true
        dineWithLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: SearchTextField Setup
    
    func setupSearchTextField() {
        view.addSubview(searchTextField)
            
        searchTextField.translatesAutoresizingMaskIntoConstraints = false
        searchTextField.topAnchor.constraint(equalTo: singaporePinWithText.bottomAnchor, constant: dynamicHeight(64)).isActive = true
        searchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: NearbyRestaurantStackView Setup
    
    func setupNearbyRestaurantStackView() {
        nearbyRestaurantStackView = {
            let restaurantStackView = RestaurantHorizontalStackView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width - dynamicWidth(32), height: dynamicWidth(164)), t: "NEARBY", restaurants: nearbyRestaurants, restaurantType: .nearby)
            return restaurantStackView
        }()
        
        view.addSubview(nearbyRestaurantStackView!)
        
        nearbyRestaurantStackView!.translatesAutoresizingMaskIntoConstraints = false
        nearbyRestaurantStackView!.topAnchor.constraint(equalTo: searchTextField.bottomAnchor, constant: dynamicHeight(32)).isActive = true
        nearbyRestaurantStackView!.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
        nearbyRestaurantStackView!.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: dynamicWidth(16)).isActive = true
    }
    
    // MARK: LocationRestaurantStackView Setup
    
    func setupLocationRestaurantStackView() {
        locationRestaurantStackView = {
            let restaurantStackView = RestaurantHorizontalStackView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width - dynamicWidth(32), height: dynamicWidth(164)), t: "LOCATION", restaurants: locationRestaurants, restaurantType: .location)
            return restaurantStackView
        }()
        
        view.addSubview(locationRestaurantStackView!)
        
        locationRestaurantStackView!.translatesAutoresizingMaskIntoConstraints = false
        locationRestaurantStackView!.topAnchor.constraint(equalTo: nearbyRestaurantStackView!.bottomAnchor, constant: dynamicHeight(164)).isActive = true
        locationRestaurantStackView!.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
        locationRestaurantStackView!.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: dynamicWidth(16)).isActive = true
    }

    // MARK: CuisinesRestuarantStackView Setup
    
    func setupCuisineRestaurantStackView() {
        cuisineRestaurantStackView = {
            let restaurantStackView = RestaurantHorizontalStackView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width - dynamicWidth(32), height: dynamicWidth(164)), t: "CUISINES", restaurants: cuisinesRestaurants, restaurantType: .location)
            return restaurantStackView
        }()
        
        view.addSubview(cuisineRestaurantStackView!)
        
        cuisineRestaurantStackView!.translatesAutoresizingMaskIntoConstraints = false
        cuisineRestaurantStackView!.topAnchor.constraint(equalTo: locationRestaurantStackView!.bottomAnchor, constant: dynamicHeight(164)).isActive = true
        cuisineRestaurantStackView!.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: dynamicWidth(16)).isActive = true
        cuisineRestaurantStackView!.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: dynamicWidth(16)).isActive = true
    }
}
