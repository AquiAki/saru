//
//  BeginnerHomeController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/14.
//

import UIKit

class BeginnerHomeController: UIViewController {
        
    @IBOutlet weak var beginnerTitle: UILabel!
    @IBOutlet weak var upper: UIButton!
    @IBOutlet weak var middle: UIButton!
    @IBOutlet weak var lower: UIButton!
    @IBOutlet weak var vocabulary: UIButton!
    @IBOutlet weak var listening: UIButton!
    
    
    @IBAction func upperButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToBeginnerUpper", sender: self)
    }
    @IBAction func middleButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToBeginnerMiddle", sender: self)
    }
    @IBAction func lowerButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToBeginnerLower", sender: self)
    }
    @IBAction func vocabularyTest(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToBeginnerVocabulary", sender: self)
    }
    @IBAction func listeningTest(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToBeginnerListening", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upper.layer.cornerRadius = 20.0
        middle.layer.cornerRadius = 20.0
        lower.layer.cornerRadius = 20.0
        vocabulary.layer.cornerRadius = 10.0
        listening.layer.cornerRadius = 10.0
        beginnerTitle.text = ""
        var charIndex = 0.0
        let beginnerText = "Beginner コース"
        for letter in beginnerText {
            Timer.scheduledTimer(withTimeInterval: 0.3 * charIndex , repeats: false) { (timer) in
                self.beginnerTitle.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toBeginnerHome" {
            _ = segue.destination as! BeginnerUpper
            //            let destinationVC = segue.destination as! MainViewController
        } else if segue.identifier == "toBeginnerHome"{
            _ = segue.destination as! BeginnerMiddle
        } else if segue.identifier == "toBeginnerHome"{
            _ = segue.destination as! BeginnerLower
        } else if segue.identifier == "toBeginnerHome"{
            _ = segue.destination as! BeginnerVocabulary
        }
    }
    
}
