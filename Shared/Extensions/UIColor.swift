

import Foundation
import UIKit

extension UIColor {
    
    // Format RBG to hex
    convenience init(red: Int, green: Int, blue: Int, alpha: Float) {
        assert(red >= 0 && red <= 255, "Invalid RED component")
        assert(green >= 0 && green <= 255, "Invalid GREEN component")
        assert(blue >= 0 && blue <= 255, "Invalid BLUE component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: CGFloat(alpha))
    }
    
    // Read colors via hex
    convenience init(netHex: Int) {
        self.init(red: (netHex >> 16) & 0xff, green: (netHex >> 8) & 0xff, blue: netHex & 0xff, alpha: 1.0)
    }
    
    // Add custom color
    struct FlatColor {
        struct Blue {
            static let SkyDeep = UIColor(netHex: 0x00BFFF)
            static let ClearBlue = UIColor(red: 33, green: 154, blue: 255, alpha: 1)
            static let FacebookBlue = UIColor(red: 59, green: 89, blue: 152, alpha: 1)
            static let ShadowBlue = UIColor(red: 163, green: 213, blue: 255, alpha: 0.5)
            static let PaleBlue = UIColor(netHex: 0xEEF2FF)
        }

        struct Red {
            static let GoogleRed = UIColor(red: 211, green: 72, blue: 54, alpha: 1)
            static let ErrorRed = UIColor(netHex: 0xCC0000)
            static let ClearRed = UIColor(netHex: 0xFA4B60)
            static let ShadowRed = UIColor(red: 250, green: 75, blue: 96, alpha: 0.5)
        }

        struct Green {
            static let AppleWatchGreen = UIColor(red: 212, green: 250, blue: 117, alpha: 1)
            static let ClearGreen = UIColor(netHex: 0x4FFF94)
            static let ShadowGreen = UIColor(red: 79, green: 255, blue: 148, alpha: 0.5)
        }
        
        struct Gray {
            static let DimGray = UIColor(netHex: 0x4A4A4A)
            static let LightGray = UIColor(netHex: 0xD8D8D8)
            static let ShadowGray = UIColor(red: 0, green: 0, blue: 0, alpha: 0.18)
            static let BackgroundGray = UIColor(netHex: 0xF6F6F6)
            
        }

        struct Orange {
            static let ClearOrange = UIColor(netHex: 0xFFBD4F)
            static let ShadowOrange = UIColor(red: 255, green: 189, blue: 79, alpha: 0.5)
        }

        static let Black = UIColor(netHex: 0x2D2D2D)
    }
}
