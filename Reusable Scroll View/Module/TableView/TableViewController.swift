import UIKit

class TableViewController: UITableViewController {

    private var header: QuotationHeader!

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.separatorStyle = .none

        header = QuotationHeader.fromNib()
        header.translatesAutoresizingMaskIntoConstraints = false
        tableView.tableHeaderView = header
    }
}
