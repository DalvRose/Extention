
#if os(iOS)

import UIKit
import XCTest
@testable import Extention

class TestCollectionViewCell: UICollectionViewCell {}
class TestTableViewCell: UITableViewCell {}

final class ExtentionTests: XCTestCase {
    
    lazy var collectionView: UICollectionView = {
        let flowLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        return collectionView
    }()
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    var indexPath: IndexPath {
        return IndexPath(row: 0, section: 0)
    }

    func testTestTableViewExtention() {
        XCTAssertEqual(TestTableViewCell.reuseIdentifier, "TestTableViewCell")
        
        tableView.register(type: TestTableViewCell.self)
        let cell = tableView.dequeueCell(withType: TestTableViewCell.self, for: indexPath) as? TestTableViewCell
        
        XCTAssertNotNil(cell)
    }
    
    func testTestCollectionViewExtention() {
        XCTAssertEqual(TestCollectionViewCell.reuseIdentifier, "TestCollectionViewCell")
        
        collectionView.register(type: TestCollectionViewCell.self)
        let cell = collectionView.dequeueCell(withType: TestCollectionViewCell.self, for: indexPath) as? TestCollectionViewCell
        
        XCTAssertNotNil(cell)
    }
}
#endif
