import UIKit

protocol SubmitButtonDelegate: class {
    func didSubmitButtonClicked()
}

@IBDesignable
class SubmitButton: UIView {

    @IBInspectable
    var title: String = "" {
        didSet {
            updateView()
        }
    }

    @IBInspectable
    var titleColor: UIColor = UIColor.white {
        didSet {
            updateView()
        }
    }

    @IBInspectable
    var buttonColor: UIColor = UIColor.blue {
        didSet {
            updateView()
        }
    }

    weak var delegate: SubmitButtonDelegate?

    private var button: UIButton = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }

    private func setupView() {
        addSubview(button)
        button.layer.cornerRadius = 4.0
    }

    private func updateView() {
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.backgroundColor = buttonColor
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let size: CGFloat = 10
        let doubleSize: CGFloat = size * 2
        button.frame = CGRect(
            x: bounds.minX + size,
            y: bounds.minY + size,
            width: bounds.maxX - doubleSize,
            height: bounds.maxY - doubleSize)
    }

    @IBAction func submitButtonClicked(_ sender: Any) {
        delegate?.didSubmitButtonClicked()
    }
}
