import UIKit

@IBDesignable
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
