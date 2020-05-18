//#-hidden-code

import VCModule
import UIKit
import PlaygroundSupport

func buildPiano() {
    let vc = PianoViewController()

    PlaygroundPage.current.needsIndefiniteExecution = true
    PlaygroundPage.current.liveView = vc
}

buildPiano()

//#-end-hidden-code

/*:
# Congratulations! You've Built A Piano!

I hope you enjoyed this Playground Book! This page has a fully-functional piano built off of the code that you created! Press "Run Code" if you want to try it out. If you'd like to play some songs, I've put their notes below. A new line reflects a pause.

### Twinkle Twinkle Little Star

- C-C-G-G-A-A-G
- F-F-E-E-D-D-C
- G-G-F-F-E-E-D
- G-G-F-F-E-E-D
- C-C-G-G-A-A-G
- F-F-E-E-D-D-C

### Mary Had a Little Lamb
- E-D-C-D-E-E-E
- D-D-D
- E-G-G
- E-D-C-D-E-E-E-E-D-D-E-D-C

*/
