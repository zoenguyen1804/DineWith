
import Foundation
import UIKit

extension UIView {
        
    func setupView(color: UIColor = .clear, width: CGFloat = 1, height: CGFloat = 1) {
        self.backgroundColor = color
        self.frame.size.width = width
        self.frame.size.height = height
        self.translatesAutoresizingMaskIntoConstraints = false
    }

    func topBottomAnchor(
        top: NSLayoutYAxisAnchor, topValue: CGFloat,
        bottom: NSLayoutYAxisAnchor, bottomValue: CGFloat) {
        
        self.topAnchor.constraint(equalTo: top, constant: topValue).isActive = true
        self.bottomAnchor.constraint(equalTo: bottom, constant: -1 * bottomValue).isActive = true
    }
    
    func leftRightAnchor(
        left: NSLayoutXAxisAnchor, leftValue: CGFloat,
        right: NSLayoutXAxisAnchor, rightValue: CGFloat) {
        
        self.leftAnchor.constraint(equalTo: left, constant: leftValue).isActive = true
        self.rightAnchor.constraint(equalTo: right, constant: -1 * rightValue).isActive = true
        
    }
    
    func anchorSize(widthValue: CGFloat, heightValue: CGFloat) {
        
        self.widthAnchor.constraint(equalToConstant: widthValue).isActive = true
        self.heightAnchor.constraint(equalToConstant: heightValue).isActive = true
        
    }

    func setShadow() {
        self.layer.shadowColor = UIColor.FlatColor.Gray.ShadowGray.cgColor
        self.layer.shadowOffset = CGSize(width: dynamicWidth(0), height: dynamicHeight(-2))
        self.layer.shadowOpacity = 1.0

        self.layer.shadowRadius = dynamicHeight(1)
        self.layer.shadowPath = UIBezierPath(
            roundedRect: self.bounds,
            cornerRadius: self.layer.cornerRadius
            ).cgPath
    }

    /// Adds constraints to this `UIView` instances `superview` object to make sure this always has the same size as the superview.
    /// Please note that this has no effect if its `superview` is `nil` – add this `UIView` instance as a subview before calling this.
    func bindFrameToSuperviewBounds() {
        guard let superview = self.superview else {
            print("Error! `superview` was nil – call `addSubview(view: UIView)` before calling `bindFrameToSuperviewBounds()` to fix this.")
            return
        }

        self.translatesAutoresizingMaskIntoConstraints = false
        self.topAnchor.constraint(equalTo: superview.topAnchor, constant: 0).isActive = true
        self.bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: 0).isActive = true
        self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: 0).isActive = true
        self.trailingAnchor.constraint(equalTo: superview.trailingAnchor, constant: 0).isActive = true
    }
}

extension CALayer {
    func applySketchShadow(
        color: UIColor = .black,
        alpha: Float = 0.5,
        x: CGFloat = 0,
        y: CGFloat = 2,
        blur: CGFloat = 4,
        spread: CGFloat = 0)
    {
        shadowColor = color.cgColor
        shadowOpacity = alpha
        shadowOffset = CGSize(width: x, height: y)
        shadowRadius = blur / 2.0
        if spread == 0 {
            shadowPath = nil
        } else {
            let dx = -spread
            let rect = bounds.insetBy(dx: dx, dy: dx)
            shadowPath = UIBezierPath(rect: rect).cgPath
        }
    }
}
