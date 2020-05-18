//#-hidden-code

import VCModule
import UIKit
import PlaygroundSupport

//let heightCenter = (vc.bounds.height / 2) - 100
//let widthCenter = (vc.bounds.width / 2) - 25

let heightCenter = 200
let widthCenter = 20

let vctwo = KeyViewController()

PlaygroundPage.current.needsIndefiniteExecution = true
PlaygroundPage.current.liveView = vctwo

//#-end-hidden-code

/*:
 # Creating a Piano Key
 
 Our first step to building our very own piano is to create our own piano key. In order to do so, we must utilize Apple's UIKit Framework to create a button, which will be our piano key!
 */

let pianoKey = UIButton()

/*:
 Next, we must configure the size of this key. For our piano key, we want the width to be 50 and the height to be 200. Please set it to that!
 */
pianoKey.frame = CGRect(x: widthCenter, y: heightCenter, width: /*#-editable-code width*/0/*#-end-editable-code*/, height: /*#-editable-code height*/0/*#-end-editable-code*/)

/*:
 Good work! The next step to creating our piano key is to give our key a name based on what piano note it plays. After this, we must set the background color of our key to white. Can you set the key's title to the letter "C", set the title color to .black, and set the background color to .white?
 */

pianoKey.setTitle(/*#-editable-code title*/""/*#-end-editable-code*/, for: .normal)
pianoKey.setTitleColor(/*#-editable-code titleColor*/.red/*#-end-editable-code*/, for: .normal)
pianoKey.backgroundColor = /*#-editable-code backgroundColor*/.blue/*#-end-editable-code*/

/*:
 Lastly, we must create a small gray border around the key. This is to make sure that we can tell the difference between each key, so once the piano is complete, we know which key we're pressing! Can you set the border width to 2, and set the border color to UIColor.gray.cgColor?
 */

pianoKey.layer.borderWidth = /*#-editable-code borderWidth*/0/*#-end-editable-code*/
pianoKey.layer.borderColor = /*#-editable-code borderColor*//*#-end-editable-code*/

/*:
 Press Run Code to test your changes. Congratulations! You've successfully created your piano key. Next, we need to make it play a sound when clicked. Go to the next page to learn how to do that!
 */

//#-hidden-code

pianoKey.contentVerticalAlignment = .bottom

func loadKey() {
    vctwo.view.setNeedsLayout()
    vctwo.view.layoutIfNeeded()
    
    pianoKey.center = vctwo.view.center
    
    vctwo.view.addSubview(pianoKey)
}

loadKey()
//#-end-hidden-code
