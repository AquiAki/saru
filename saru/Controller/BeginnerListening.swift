//
//  SecondViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/10.
//

import UIKit
import AVFoundation



class BeginnerListening: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var player: AVAudioPlayer!
    var quizBrain = QuizBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        //        button1.backgroundColor = UIColor.systemPink
        button1.layer.cornerRadius = 10.0
        
    }
    
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    //    func playSound2() {
    //        let url = Bundle.main.url(forResource: "QuizWrong", withExtension: "mp3")
    //        player = try! AVAudioPlayer(contentsOf: url!)
    //        player.play()
    //    }
    
    @IBAction func listeningPressed(_ sender: UIButton) {
        let listeningQuestion = quizBrain.getBeginnerListening()
        playSound(soundName: listeningQuestion)
    }
    
    
    @IBAction func answerButton(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkBeginnerAnswerListening(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
            playSound(soundName: "QuizRight")
        } else {
            sender.backgroundColor = UIColor.red
            playSound(soundName: "QuizWrong")
        }
        
        quizBrain.nextBeginnerListening()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    
    //    @IBAction func answerButton(_ sender: UIButton) {
    //        let userAnswer = sender.currentTitle!
    //        let userGotItRight = quizBrain.checkAnswer(userAnswer: userAnswer)
    //
    //        if userGotItRight {
    //            sender.backgroundColor = UIColor.green
    //            playSound()
    //        } else {
    //            sender.backgroundColor = UIColor.red
    //            playSound2()
    //        }
    //
    //        quizBrain.nextQuestion()
    //
    //        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    //    }
    
    
    @objc func updateUI() {
        
        
        //Need to fetch the answers and update the button titles using the setTitle method.
        let answerChoices = quizBrain.getBeginnerListeningAnswer()
        
        button1.setTitle(answerChoices[0], for: .normal)
        button2.setTitle(answerChoices[1], for: .normal)
        button3.setTitle(answerChoices[2], for: .normal)
        
        //        progressBar.progress = quizBrain.getProgress()
        //        scoreLabel.text = "Score: \(quizBrain.getScore())"
        
        button1.backgroundColor = UIColor.clear
        button2.backgroundColor = UIColor.clear
        button3.backgroundColor = UIColor.clear
        
    }
    
    
    
}

