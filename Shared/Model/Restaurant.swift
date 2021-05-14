
import Foundation

struct Restaurant {
    let name: String
    let imageName: String
    let numberOfReviews: Int
    let location: String
    let rating: Double
    let menu: Menu
    let description: String
    let reviews: [String]
}

struct Menu {
    let dishes: [String]
}
