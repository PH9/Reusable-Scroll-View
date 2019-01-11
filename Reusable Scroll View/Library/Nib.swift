import UIKit

extension UIViewController {
    class func fromStoryboardName(_ name: String) -> UIViewController {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        return storyboard.instantiateInitialViewController()!
    }

    class func fromStoryboard<T: UIViewController>(name: String) -> T {
        let storyboard = UIStoryboard(name: name, bundle: nil)
        return storyboard.instantiateInitialViewController()! as! T
    }

    class func fromStoryboard<T: UIViewController>() -> T {
        let storyboard = UIStoryboard(name: String(describing: T.self), bundle: nil)
        return storyboard.instantiateInitialViewController()! as! T
    }
}

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}

extension Bundle {
    static var framework: Bundle {
        return Bundle(for: self)
    }
}
