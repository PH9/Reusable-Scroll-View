import UIKit

class ViewController: UITableViewController {

    let sampleViews = ["StackView", "Container", "TableView",]

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sampleViews.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = sampleViews[indexPath.row]
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc: UIViewController
        if indexPath.row < 2 {
            vc = UIViewController.fromStoryboardName(sampleViews[indexPath.row])
        } else {
            vc = TableViewController()
        }

        navigationController?.pushViewController(vc, animated: true)
    }
}
