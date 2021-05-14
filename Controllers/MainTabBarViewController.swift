

import UIKit

class MainTabBarViewController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = UIApplication.shared.delegate as? UITabBarControllerDelegate
        
        self.tabBar.isTranslucent = false
        self.tabBar.barTintColor = .white
        self.tabBar.layer.borderWidth = 0
        self.tabBar.layer.borderColor = UIColor.white.cgColor
        
        let homeNavigationController = UINavigationController()
        homeNavigationController.pushViewController(ViewController(), animated: false)
        homeNavigationController.tabBarItem = UITabBarItem.init(title: "HOME", image: UIImage(named: "home"), tag: 1)
        
        let messagesNavigationController = UINavigationController()
        messagesNavigationController.pushViewController(ViewController(), animated: false)
        messagesNavigationController.tabBarItem = UITabBarItem.init(title: "MESSAGES", image: UIImage(named: "messages"), tag: 2)
        
        let profileNavigationController = UINavigationController()
        profileNavigationController.pushViewController(ProfileViewController(), animated: false)
        profileNavigationController.tabBarItem = UITabBarItem.init(title: "PROFILE", image: UIImage(named: "profile"), tag: 3)

        let restaurantNavigationController = UINavigationController()
        restaurantNavigationController.pushViewController(SearchRestaurantViewController(), animated: false)
        restaurantNavigationController.tabBarItem = UITabBarItem.init(title: "RESTAURANTS", image: UIImage(named: "restaurants"), tag: 4)
        
        let activitiesNavigationController = UINavigationController()
        activitiesNavigationController.pushViewController(ViewController(), animated: false)
        activitiesNavigationController.tabBarItem = UITabBarItem.init(title: "MY ACTIVITIES", image: UIImage(named: "myactivities"), tag: 5)

        viewControllers = [homeNavigationController, messagesNavigationController, profileNavigationController, restaurantNavigationController, activitiesNavigationController]
        
        // Set default tab
        self.selectedIndex = 3
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
        super.viewWillAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        super.viewWillDisappear(animated)
    }
    

}
