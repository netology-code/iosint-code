//
//  ViewController.swift
//  AVFoundation_Audio
//
//  Created by Niki Pavlove on 18.02.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var Player = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        do {
            Player = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Queen", ofType: "mp3")!))
            Player.prepareToPlay()
        }
        catch {
            print(error)
        }
        
        
    }

    @IBAction func PlayButton(_ sender: Any) {
        Player.play()
    }
    
    @IBAction func StopButton(_ sender: Any) {
        if Player.isPlaying {
            Player.stop()
        }
        else {
            print("Already stopped!")
        }
    }
}
