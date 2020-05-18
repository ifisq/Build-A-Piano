// Code inside modules can be shared between pages and other source files.

import UIKit
import PlaygroundSupport
import AVFoundation


public class KeyViewController : UIViewController {
    
    
    public override func loadView() {
        let view = UIView.init()
        view.backgroundColor = UIColor(red: 0.00, green: 0.20, blue: 0.40, alpha: 1.00)
        
        self.view = view
    }
}
