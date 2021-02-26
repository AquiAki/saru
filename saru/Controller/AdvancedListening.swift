//
//  SecondViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/10.
//

import UIKit
import AVFoundation



class AdvancedListening: UIViewController {
    
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var choice4: UIButton!
    
    var player: AVAudioPlayer!
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        choice1.layer.cornerRadius = 15.0
        choice2.layer.cornerRadius = 15.0
        choice3.layer.cornerRadius = 15.0
        choice4.layer.cornerRadius = 15.0
    }
    
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    
    @IBAction func questionSound(_ sender: UIButton) {
        let listeningQuestion = quizBrain.getAdvancedListening()
        playSound(soundName: listeningQuestion)
    }
    
    
    @IBAction func answerPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkAdvancedAnswerListening(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
            playSound(soundName: "QuizRight")
        } else {
            sender.backgroundColor = UIColor.red
            playSound(soundName: "QuizWrong")
        }
        
        quizBrain.nextAdvancedListening()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
    
    
    
    
    
    
    @objc func updateUI() {
        
        
        //Need to fetch the answers and update the button titles using the setTitle method.
        let answerChoices = quizBrain.getAdvancedListeningAnswer()
        
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        choice4.setTitle(answerChoices[3], for: .normal)
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        choice4.backgroundColor = UIColor.clear
        
    }
    
    
    
}
