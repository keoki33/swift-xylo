//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

//import UIKit
//import AVFoundation
//var player: AVAudioPlayer?
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//
//    @IBAction func keyPressed(_ sender: UIButton) {
//       playSound()
//    }
//    func playSound() {
//        guard let url = Bundle.main.url(forResource: "C", withExtension: "wav") else { return }
//
//        do {
//            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
//            try AVAudioSession.sharedInstance().setActive(true)
//
//
//            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
//
//
//
//            guard let player = player else { return }
//
//            player.play()
//
//        } catch let error {
//            print(error.localizedDescription)
//        }
//    }
//
//}

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func dPressed(_ sender: UIButton) {
        playSound(s:"D")
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playSound(s:"C")
    }
    
    @IBAction func Epressed(_ sender: UIButton) {
        playSound(s: "E")
    }
    
    @IBAction func fPressed(_ sender: UIButton) {
         playSound(s: "F")
    }
    
    @IBAction func gPressed(_ sender: UIButton) {
         playSound(s: "G")
    }
    
    @IBAction func aPressed(_ sender: UIButton) {
         playSound(s: "A")
    }
    
    
    @IBAction func bPressed(_ sender: UIButton) {
         playSound(s: "B")
    }
    
    func playSound(s:String) {
        let url = Bundle.main.url(forResource: s, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

