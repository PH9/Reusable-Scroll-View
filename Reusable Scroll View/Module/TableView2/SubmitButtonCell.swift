import UIKit

protocol SubmitButtonCellDelegate: class {
    func didSubmitButtonCellClicked()
}

class SubmitButtonCell: UITableViewCell {

    weak var delegate: SubmitButtonCellDelegate?

    @IBAction func submitButtonClicked(_ sender: Any) {
        delegate?.didSubmitButtonCellClicked()
    }

}
