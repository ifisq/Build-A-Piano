//#-hidden-code

import VCModule
import UIKit
import PlaygroundSupport

func buildPiano() {
    let vc = PianoViewController()

    PlaygroundPage.current.needsIndefiniteExecution = true
    PlaygroundPage.current.liveView = vc
}
//#-end-hidden-code

/*:
 # Welcome to Build A Piano!
 
 In these troubling times, many of us are finding ourselves with a lot of free time on our hands. Almost everything is closed, and this means that we're feeling bored. This means that it's a great time to try something new, like learning how to play an instrument! However, it's a bit hard to find an instrument right now. Let's fix that issue using the power of Swift! Press Run Code to get a taste of what you'll be building today.
 */
buildPiano()
