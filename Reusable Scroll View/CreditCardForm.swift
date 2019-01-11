import UIKit

class CreditCardForm: UIStackView {

    @IBOutlet weak var nameOnCardTextField: UITextField!
    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var expiryTextField: UITextField!
    @IBOutlet weak var securityCodeTextField: UITextField!

    func getCreditCard() -> CreditCard {
        return CreditCard(
            name: nameOnCardTextField.string,
            number: numberTextField.string,
            expiry: expiryTextField.string,
            securityCode: securityCodeTextField.string)
    }
}

struct CreditCard {
    let name: String
    let number: String
    let expiry: String
    let securityCode: String
}

extension UITextField {
    var string: String {
        return text ?? ""
    }
}

protocol NibProtocol {
    static var nib: UINib { get }
}

extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
