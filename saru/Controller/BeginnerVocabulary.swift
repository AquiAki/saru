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
    @IBOutlet weak var progressBar: UIProgressView!
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
    
    
    
    
//    let beginnerQuiz = [
//        Question(q: "flexor", a: ["挙筋", "屈筋", "伸筋"], correctAnswer: "屈筋"),
//        Question(q: "striated muscle", a: ["心筋", "平滑筋", "横紋筋"], correctAnswer: "横紋筋"),
//        Question(q: "involuntary muscle", a: ["不随意筋", "随意筋", "骨格筋"], correctAnswer: "不随意筋"),
//        Question(q: "buccinator", a: ["表情筋", "頬筋", "鼻筋"], correctAnswer: "頬筋"),
//        Question(q: "orbicularis oris", a: ["眼輪筋", "後頭筋", "口輪筋"], correctAnswer: "口輪筋"),
//        Question(q: "側頭筋", a: ["temporalis", "occipitalis", "frontalis"], correctAnswer: "temporalis"),
//        Question(q: "オトガイ舌筋", a: ["styloglossus", "genioglossus", "hyoglossus"], correctAnswer: "genioglossus"),
//        Question(q: "口蓋帆張筋", a: ["tensor veli palatini", "levator veli palatini", "palatoglossus"], correctAnswer: "tensor veli palatini"),
//        Question(q: "前斜角筋", a: ["scalenus posterior", "scalenus medius", "scalenus anterior"], correctAnswer: "scalenus anterior"),
//        Question(q: "広頚筋", a: ["sternocleidomastoid muscle", "uvularis", "platysma"], correctAnswer: "platysma"),
//        Question(q: "splenius capitis", a: ["頚板状筋", "頭板状筋", "脊柱起立筋"], correctAnswer: "頭板状筋"),
//        Question(q: "internal intercostal", a: ["外肋間筋", "内腹斜筋", "内肋間筋"], correctAnswer: "内肋間筋"),
//        Question(q: "transversus abdominis", a: ["腹直筋", "腹横筋", "外腹斜筋"], correctAnswer: "腹横筋"),
//        Question(q: "erector spinae", a: ["腰方形筋", "脊柱起立筋", "横隔膜"], correctAnswer: "脊柱起立筋"),
//        Question(q: "subclavius", a: ["鎖骨下筋", "前鋸筋", "小胸筋"], correctAnswer: "鎖骨下筋"),
//        Question(q: "僧帽筋", a: ["deltoid", "supinator", "trapezius"], correctAnswer: "trapezius"),
//        Question(q: "大菱形筋", a: ["teres major", "pectoralis major", "rhomboid major"], correctAnswer: "rhomboid major"),
//        Question(q: "上腕筋", a: ["brachialis", "biceps", "triceps"], correctAnswer: "brachialis"),
//        Question(q: "円回内筋", a: ["latissimus dorsi", "pronator teres", "levator scapulae"], correctAnswer: "pronator teres"),
//        Question(q: "長母指屈筋", a: ["flexor pollicis longus", "flexor carpi ulnaris", "flexor carpi radialis"], correctAnswer: "flexor pollicis longus"),
//        Question(q: "extensor carpi ulnaris", a: ["長母指伸筋", "尺側手根伸筋", "短母指伸筋"], correctAnswer: "尺側手根伸筋"),
//        Question(q: "opponens pollicis", a: ["長母指外転筋", "母指対立筋", "母指内転筋"], correctAnswer: "母指対立筋"),
//        Question(q: "flexor pollicis brevis", a: ["短母指屈筋", "短母指外転筋", "短母指伸筋"], correctAnswer: "短母指屈筋"),
//        Question(q: "pubococcygeus", a: ["恥骨直腸筋", "腸骨尾骨筋", "恥骨尾骨筋"], correctAnswer: "恥骨尾骨筋"),
//        Question(q: "urogenital diaphragm", a: ["肛門挙筋", "尿生殖隔膜", "骨盤隔膜"], correctAnswer: "尿生殖隔膜"),
//        Question(q: "大殿筋", a: ["psoas major", "gluteus maximus", "vastus lateralis"], correctAnswer: "gluteus maximus"),
//        Question(q: "大腿四頭筋", a: ["quadriceps femoris", "vastus intermedius", "rectus femur"], correctAnswer: "quadriceps femoris"),
//        Question(q: "梨状筋", a: ["hamstring", "cremaster", "piriformis"], correctAnswer: "piriformis"),
//        Question(q: "半腱様筋", a: ["semitendinosus", "semimembranosus", "gastrocnemius"], correctAnswer: "semitendinosus"),
//        Question(q: "大腿直筋", a: ["rectus femur", "triceps surae", "biceps femoris"], correctAnswer: "rectus femur"),
//        Question(q: "extensor hallucis brevis", a: ["短趾伸筋", "短趾屈筋", "短母趾伸筋"], correctAnswer: "短母趾伸筋"),
//        Question(q: "adduction", a: ["回旋", "外転", "内転"], correctAnswer: "内転"),
//
//    ]
    

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
    
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        if segue.identifier == "goToBeginnerVocabularyGoal" {
    //            _ = segue.destination as! BeginnerGoal
    //            //            let destinationVC = segue.destination as! MainViewController
    //        } else if segue.identifier == "goBackToBeginnerHome" {
    //            _ = segue.destination as! BeginnerHomeController
    //            //            let destinationVC = segue.destination as! MainViewController
    //        } else {
    //            print("error")
    //        }
    //
    //    }
    
    
    
}

















