import XCTest
@testable import Reusable_Scroll_View

class ScrollViewControllerTests: TestCase {

    func testDefault() {
        Device.allCases.forEach { (device) in
            let vc: ScrollViewController = ScrollViewController.fromStoryboard(name: "ScrollView")
            XCTAssertEqual(PaymentMethod.creditCard, vc.paymentMethod)

            let (parent, _) = traitControllers(device: device, child: vc)

            FBSnapshotVerifyView(parent.view, identifier: "\(device)")
        }
    }

    func testVeryLong() {
        Device.allCases.forEach { (device) in
            let vc: ScrollViewController = ScrollViewController.fromStoryboard(name: "ScrollView")

            let (parent, _) = traitControllers(device: device, child: vc)
            vc.paymentMethod = .cash

            FBSnapshotVerifyView(parent.view, identifier: "\(device)")
        }
    }

    func testS() {
        Device.allCases.forEach { (device) in
            let vc: ScrollViewController = ScrollViewController.fromStoryboard(name: "ScrollView")

            let (parent, _) = traitControllers(device: device, child: vc)
            vc.paymentMethod = .promptPay

            FBSnapshotVerifyView(parent.view, identifier: "\(device)")
        }
    }
}
