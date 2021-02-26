//
//  MainViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/13.
//

import UIKit
import AVFoundation

class MainViewController: UIViewController {
    
    @IBOutlet weak var pageScrollView: UIScrollView!
    @IBOutlet weak var toBeginner: UIButton!
    @IBOutlet weak var toIntermediate: UIButton!
    @IBOutlet weak var toAdvanced: UIButton!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playSound(soundName: "jungle-village")
        toBeginner.layer.cornerRadius = 10.0
        toIntermediate.layer.cornerRadius = 10.0
        toAdvanced.layer.cornerRadius = 10.0
    }
    
    @IBAction func pressedBeginner(_ sender: UIButton) {
        playSound(soundName: "monkeyVoice")
        self.performSegue(withIdentifier: "toBeginnerHome", sender: self)
    }
    
    @IBAction func pressedIntermediate(_ sender: UIButton) {
        playSound(soundName: "monkeyVoice")
        self.performSegue(withIdentifier: "toIntermediateHome", sender: self)
    }
    
    @IBAction func pressedAdvanced(_ sender: UIButton) {
        
        playSound(soundName: "monkeyVoice")
        self.performSegue(withIdentifier: "toAdvancedHome", sender: self)
    }
    
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url! )
        player.play()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toBeginnerHome" {
            _ = segue.destination as! BeginnerHomeController
            //            let destinationVC = segue.destination as! MainViewController
        } else if segue.identifier == "toIntermediateHome" {
            _ = segue.destination as! IntermediateHomeController
            //            let destinationVC = segue.destination as! MainViewController
        } else if segue.identifier == "toAdvancedHome" {
            _ = segue.destination as! AdvancedHomeController
            //            let destinationVC = segue.destination as! MainViewController
        } else {
            print("error")
        }
    }
    
}
