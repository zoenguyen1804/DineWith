

import UIKit

func dynamicFontSize(_ fontSize: CGFloat) -> CGFloat {
    let screenWidth = UIScreen.main.bounds.size.width
    let calculatedFontSize = screenWidth / 375 * fontSize
    return calculatedFontSize
}

func dynamicHeight(_ height: CGFloat) -> CGFloat {
    let screenHeight = UIScreen.main.bounds.size.height
    let calculatedHeight = screenHeight / 667 * height
    return calculatedHeight
}

func dynamicWidth(_ width: CGFloat) -> CGFloat {
    let screenWidth = UIScreen.main.bounds.size.width
    let calculatedWidth = screenWidth / 375 * width
    return calculatedWidth
}
