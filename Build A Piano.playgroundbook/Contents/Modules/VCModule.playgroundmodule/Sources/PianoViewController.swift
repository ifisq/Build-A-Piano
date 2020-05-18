// Code inside modules can be shared between pages and other source files.

import UIKit
import PlaygroundSupport
import AVFoundation


public class PianoViewController : UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    
    
    public override func loadView() {
        let view = UIView.init()
        view.backgroundColor = UIColor(red: 0.00, green: 0.20, blue: 0.40, alpha: 1.00)
        
        let C = UIButton()
        C.frame = CGRect(x: 20, y: 200, width: 50, height: 200)
        C.contentVerticalAlignment = .bottom
        C.setTitle("C", for: .normal)
        C.setTitleColor(.black, for: .normal)
        C.backgroundColor = .white
        C.layer.borderWidth = 2
        C.layer.borderColor = UIColor.gray.cgColor
        C.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let Csharp = UIButton()
        Csharp.frame = CGRect(x: 57, y: 200, width: 25, height: 100)
        Csharp.contentVerticalAlignment = .bottom
        Csharp.setTitle("C#", for: .normal)
        Csharp.setTitleColor(.white, for: .normal)
        Csharp.backgroundColor = .black
        Csharp.layer.borderWidth = 2
        Csharp.layer.borderColor = UIColor.gray.cgColor
        Csharp.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let D = UIButton()
        D.frame = CGRect(x: 70, y: 200, width: 50, height: 200)
        D.contentVerticalAlignment = .bottom
        D.setTitle("D", for: .normal)
        D.setTitleColor(.black, for: .normal)
        D.backgroundColor = .white
        D.layer.borderWidth = 2
        D.layer.borderColor = UIColor.gray.cgColor
        D.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let Eflat = UIButton()
        Eflat.frame = CGRect(x: 107, y: 200, width: 25, height: 100)
        Eflat.contentVerticalAlignment = .bottom
        Eflat.setTitle("E♭", for: .normal)
        Eflat.setTitleColor(.white, for: .normal)
        Eflat.backgroundColor = .black
        Eflat.layer.borderWidth = 2
        Eflat.layer.borderColor = UIColor.gray.cgColor
        Eflat.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let E = UIButton()
        E.frame = CGRect(x: 120, y: 200, width: 50, height: 200)
        E.contentVerticalAlignment = .bottom
        E.setTitle("E", for: .normal)
        E.setTitleColor(.black, for: .normal)
        E.backgroundColor = .white
        E.layer.borderWidth = 2
        E.layer.borderColor = UIColor.gray.cgColor
        E.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let F = UIButton()
        F.frame = CGRect(x: 170, y: 200, width: 50, height: 200)
        F.contentVerticalAlignment = .bottom
        F.setTitle("F", for: .normal)
        F.setTitleColor(.black, for: .normal)
        F.backgroundColor = .white
        F.layer.borderWidth = 2
        F.layer.borderColor = UIColor.gray.cgColor
        F.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let Fsharp = UIButton()
        Fsharp.frame = CGRect(x: 207, y: 200, width: 25, height: 100)
        Fsharp.contentVerticalAlignment = .bottom
        Fsharp.setTitle("F#", for: .normal)
        Fsharp.setTitleColor(.white, for: .normal)
        Fsharp.backgroundColor = .black
        Fsharp.layer.borderWidth = 2
        Fsharp.layer.borderColor = UIColor.gray.cgColor
        Fsharp.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let G = UIButton()
        G.frame = CGRect(x: 220, y: 200, width: 50, height: 200)
        G.contentVerticalAlignment = .bottom
        G.setTitle("G", for: .normal)
        G.setTitleColor(.black, for: .normal)
        G.backgroundColor = .white
        G.layer.borderWidth = 2
        G.layer.borderColor = UIColor.gray.cgColor
        G.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let Aflat = UIButton()
        Aflat.frame = CGRect(x: 257, y: 200, width: 25, height: 100)
        Aflat.contentVerticalAlignment = .bottom
        Aflat.setTitle("A♭", for: .normal)
        Aflat.setTitleColor(.white, for: .normal)
        Aflat.backgroundColor = .black
        Aflat.layer.borderWidth = 2
        Aflat.layer.borderColor = UIColor.gray.cgColor
        Aflat.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let A = UIButton()
        A.frame = CGRect(x: 270, y: 200, width: 50, height: 200)
        A.contentVerticalAlignment = .bottom
        A.setTitle("A", for: .normal)
        A.setTitleColor(.black, for: .normal)
        A.backgroundColor = .white
        A.layer.borderWidth = 2
        A.layer.borderColor = UIColor.gray.cgColor
        A.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let Bflat = UIButton()
        Bflat.frame = CGRect(x: 307, y: 200, width: 25, height: 100)
        Bflat.contentVerticalAlignment = .bottom
        Bflat.setTitle("B♭", for: .normal)
        Bflat.setTitleColor(.white, for: .normal)
        Bflat.backgroundColor = .black
        Bflat.layer.borderWidth = 2
        Bflat.layer.borderColor = UIColor.gray.cgColor
        Bflat.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let B = UIButton()
        B.frame = CGRect(x: 320, y: 200, width: 50, height: 200)
        B.contentVerticalAlignment = .bottom
        B.setTitle("B", for: .normal)
        B.setTitleColor(.black, for: .normal)
        B.backgroundColor = .white
        B.layer.borderWidth = 2
        B.layer.borderColor = UIColor.gray.cgColor
        B.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        
        let C2 = UIButton()
        C2.frame = CGRect(x: 370, y: 200, width: 50, height: 200)
        C2.contentVerticalAlignment = .bottom
        C2.setTitle("C", for: .normal)
        C2.setTitleColor(.black, for: .normal)
        C2.backgroundColor = .white
        C2.layer.borderWidth = 2
        C2.layer.borderColor = UIColor.gray.cgColor
        C2.addTarget(self, action: #selector(PianoViewController.play(_:)), for: .touchUpInside)
        C2.tag = 1
        
        view.addSubview(C)
        view.addSubview(D)
        view.addSubview(Csharp)
        view.addSubview(E)
        view.addSubview(Eflat)
        view.addSubview(F)
        view.addSubview(G)
        view.addSubview(Fsharp)
        view.addSubview(A)
        view.addSubview(Aflat)
        view.addSubview(B)
        view.addSubview(Bflat)
        view.addSubview(C2)
        
        self.view = view
    }
    
    
    
    @IBAction func play(_ sender: UIButton) {
        var note = sender.titleLabel!.text!
        
        if (sender.tag == 1) {
            note = "C8"
        }
        
        if (note.contains("♭")) {
            note = note.replacingOccurrences(of: "♭", with: "flat")
        }
        
        if let path = Bundle.main.path(forResource: note, ofType: "mp3") {
            do {
                let url = URL(fileURLWithPath: path)
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                try AVAudioSession.sharedInstance().setCategory(.playback)
                audioPlayer.prepareToPlay()
                audioPlayer.play()
            }
            catch(let error) {
                print(error)
            }
        }
    }
    
}
