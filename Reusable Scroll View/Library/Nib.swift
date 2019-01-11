import UIKit

extension UIViewController {
    class func fromStoryboardName(_ name: String) -> UIViewController {
        let storyboard = UIStoryboard(name: name, bundle: .framework)
        return storyboard.instantiateInitialViewController()!
    }

    class func fromStoryboard<T: UIViewController>(name: String) -> T {
        let storyboard = UIStoryboard(name: name, bundle: .framework)
        return storyboard.instantiateInitialViewController()! as! T
    }

    class func fromStoryboard<T: UIViewController>() -> T {
        let name = String(describing: T.self)
        let storyboard = UIStoryboard(name: name, bundle: .framework)
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
        return Bundle(for: AppDelegate.self)
    }
}
