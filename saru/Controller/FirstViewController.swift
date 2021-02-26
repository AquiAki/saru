//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation


class FirstViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buttonLabel: UIButton!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound(soundName: "jungle-village")
        buttonLabel.layer.cornerRadius = 18.0
        
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = "本気で学ぶ医療英語"
        for letter in titleText{
            Timer.scheduledTimer(withTimeInterval: 0.2 * charIndex , repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
    @IBAction func pressed(_ sender: UIButton) {
        playSound(soundName: "monkeyVoice")
        
        self.performSegue(withIdentifier: "goToMain", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToMain" {
            _ = segue.destination as! MainViewController
            //            let destinationVC = segue.destination as! MainViewController
        }
    }
    
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url! )
        player.play()
    }
}
