//
//  SecondViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/10.
//

import UIKit
import AVFoundation



class BeginnerVocabulary: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    @IBOutlet weak var choice3: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    
    var player: AVAudioPlayer!
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        choice1.layer.cornerRadius = 15.0
        choice2.layer.cornerRadius = 15.0
        choice3.layer.cornerRadius = 15.0

    }
    

    func playSound() {
        let url = Bundle.main.url(forResource: "QuizRight", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    func playSound2() {
        let url = Bundle.main.url(forResource: "QuizWrong", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotItRight = quizBrain.checkBeginnerAnswer(userAnswer: userAnswer)
        
        if userGotItRight {
            sender.backgroundColor = UIColor.green
            playSound()
        } else {
            sender.backgroundColor = UIColor.red
            playSound2()
        }
        
        quizBrain.nextBeginnerQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.2, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
        
    }
    
    @objc func updateUI() {
        
        questionLabel.text = quizBrain.getBeginnerText()
        //        questionLabel.text = quizBrain.getQuestionText()
        
        //Need to fetch the answers and update the button titles using the setTitle method.
        let answerChoices = quizBrain.getBeginnerAnswers()
        
        
        choice1.setTitle(answerChoices[0], for: .normal)
        choice2.setTitle(answerChoices[1], for: .normal)
        choice3.setTitle(answerChoices[2], for: .normal)
        
//        progressBar.progress = quizBrain.getProgress()
        
        //        let scoreLevel = quizBrain.segueCheck()
        //        print(scoreLevel)
        //        self.performSegue(withIdentifier: "\(scoreLevel)" , sender: self)
        
        
        choice1.backgroundColor = UIColor.clear
        choice2.backgroundColor = UIColor.clear
        choice3.backgroundColor = UIColor.clear
        
    }
    
    
    
}

















