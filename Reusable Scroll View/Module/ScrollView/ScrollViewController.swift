import UIKit

class ScrollViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var submitButton: SubmitButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        submitButton.delegate = self
    }
}

extension ScrollViewController: SubmitButtonDelegate {
    func didSubmitButtonClicked() {
        print("Clicked!!!")
    }
}
