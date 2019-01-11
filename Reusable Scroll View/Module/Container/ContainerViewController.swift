import UIKit

class ContainerViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        addCreditCard()
    }

    private func addCreditCard() {
        let vc: TableViewController = TableViewController.fromStoryboard(name: "TableView")
        addChild(vc)
        let width = containerView.frame.size.width
        let height = containerView.frame.size.height
        vc.view.frame = CGRect(x: 0, y: 0, width: width, height: height)
        containerView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }

    @IBAction func nextButtonClicked(_ sender: Any) {

    }
}
