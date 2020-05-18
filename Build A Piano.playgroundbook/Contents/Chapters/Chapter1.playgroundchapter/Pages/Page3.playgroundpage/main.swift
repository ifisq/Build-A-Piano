//#-hidden-code

import VCModule
import UIKit
import PlaygroundSupport
import AVFoundation

//#-end-hidden-code

/*:
 # Adding sound to our piano key
 
 Our last step to making a working piano key is to add sound! This uses the AVFoundation framework, which is Apple's framework for working with audiovisual media. To connect our piano key to an audio file, there's a few things you have to do.
 */

//#-hidden-code

public class FinishedKeyViewController : UIViewController {
    
//#-end-hidden-code
    
/*:
 First, set the audioPlayer variable to the type AVAudioPlayer. Do this by making the following code look like this:
 
    var audioPlayer: AVAudioPlayer!
*/

    var audioPlayer: /*#-editable-code type*/AV/*#-end-editable-code*/

//#-hidden-code
    public override func loadView() {
        let view = UIView.init()
        view.backgroundColor = UIColor(red: 0.00, green: 0.20, blue: 0.40, alpha: 1.00)
        
        let key = UIButton()
        key.frame = CGRect(x: 200, y: 200, width: 50, height: 200)
        key.contentVerticalAlignment = .bottom
        key.setTitle("C", for: .normal)
        key.setTitleColor(.black, for: .normal)
        key.backgroundColor = .white
        key.layer.borderWidth = 2
        key.layer.borderColor = UIColor.gray.cgColor
        
        key.addTarget(self, action: #selector(FinishedKeyViewController.playKey(_:)), for: .touchUpInside)
        
        view.addSubview(key)
        
        self.view = view
    }
//#-end-hidden-code
    
/*:
Next, please set the note variable equal to "C", since that's the key we want to play. Finally, under the line that says audioPlayer.prepareToPlay(), please replace nil with the following:
 
 audioPlayer.play()
*/
    
    @IBAction func playKey(_ sender: UIButton) {
        var note = /*#-editable-code note*/""/*#-end-editable-code*/
        
        if let path = Bundle.main.path(forResource: note, ofType: "mp3") {
            do {
                let url = URL(fileURLWithPath: path)
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                try AVAudioSession.sharedInstance().setCategory(.playback)
                audioPlayer.prepareToPlay()
                /*#-editable-code play*/nil/*#-end-editable-code*/
            }
            catch(let error) {
                print(error)
            }
        }
    }
}

/*:
 Press Run Code to see if your code works!
 
 Congratulations! you've successfully created a working piano key! In the process, you've learned how to use Apple's UIKit framework to create buttons and views! You've also learned how to use Apple's powerful AVFoundation framework to connect UI elements to sound to create audiovisual media. Go to the next page if you want to try out a fully-functional piano!
 */

//#-hidden-code

let keyViewController = FinishedKeyViewController()

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = keyViewController

//#-end-hidden-code
