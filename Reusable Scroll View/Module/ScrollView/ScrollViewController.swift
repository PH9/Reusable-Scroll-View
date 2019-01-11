import UIKit

enum PaymentMethod {
    case creditCard
    case cash
    case promptPay
}

class ScrollViewController: UIViewController {
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var submitButton: SubmitButton!

    private var method: PaymentMethod = .creditCard {
        didSet {
            setupPaymentMethod()
        }
    }

    private lazy var creditCardView: CreditCardForm = CreditCardForm.fromNib()
    private lazy var veryLongView: VeryLongContent = VeryLongContent.fromNib()
    private lazy var quotationHeaderView: QuotationHeader = QuotationHeader.fromNib()

    private var currentView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        submitButton.delegate = self
        setupPaymentMethod()
    }

    private func setupPaymentMethod() {
        if let currentView = currentView {
            stackView.removeArrangedSubview(currentView)
            currentView.removeFromSuperview()
        }

        switch method {
        case .creditCard:
            stackView.addArrangedSubview(creditCardView)
            currentView = creditCardView
        case .cash:
            stackView.addArrangedSubview(veryLongView)
            currentView = veryLongView
        case .promptPay:
            stackView.addArrangedSubview(quotationHeaderView)
            currentView = quotationHeaderView
        }
    }

    @IBAction func changePaymentMethod(_ sender: Any) {
        switch method {
        case .creditCard:
            method = .cash
        case .cash:
            method = .promptPay
        case .promptPay:
            method = .creditCard
        }
    }
}

extension ScrollViewController: SubmitButtonDelegate {
    func didSubmitButtonClicked() {
        print("Clicked!!!")
    }
}
