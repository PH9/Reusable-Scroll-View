import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var contentView: UIStackView!

    private var creditCardView: CreditCardForm!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        creditCardView = CreditCardForm.fromNib()
        contentView.addArrangedSubview(creditCardView)
    }

    @IBAction func nextButtonClicked(_ sender: Any) {
        print(creditCardView.getCreditCard())
    }
}

