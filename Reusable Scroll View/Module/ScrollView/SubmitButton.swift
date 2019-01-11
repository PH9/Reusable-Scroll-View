import UIKit

protocol SubmitButtonDelegate: class {
    func didSubmitButtonClicked()
}

class SubmitButton: UIView {

    weak var delegate: SubmitButtonDelegate?

    @IBAction func submitButtonClicked(_ sender: Any) {
        delegate?.didSubmitButtonClicked()
    }

}
