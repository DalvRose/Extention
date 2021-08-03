
#if os(iOS)
import UIKit

public extension UITableViewCell {
    
    static var reuseIdentifier: String {
        return String(describing: Self.self)
    }
}
#endif
