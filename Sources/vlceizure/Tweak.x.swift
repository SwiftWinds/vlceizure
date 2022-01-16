import Orion
import UIKit

class LabelHook: ClassHook<UILabel> {
    func setText(_ text: String) {
        orig.setText(
            text.uppercased().replacingOccurrences(of: " ", with: "👏")
        )
    }
}