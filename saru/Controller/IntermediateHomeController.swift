//
//  BeginnerHomeController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/14.
//

import UIKit

class IntermediateHomeController: UIViewController {
        
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var upper: UIButton!
    @IBOutlet weak var middle: UIButton!
    @IBOutlet weak var lower: UIButton!
    @IBOutlet weak var vocabulary: UIButton!
    @IBOutlet weak var listening: UIButton!
    
    
    
    
    
    @IBAction func upperButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToIntermediateUpper", sender: self)
    }
    @IBAction func middleButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToIntermediateMiddle", sender: self)
    }
    @IBAction func lowerButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToIntermediateLower", sender: self)
    }
    
    @IBAction func vocabularyButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToIntermediateVocabulary", sender: self)
    }
    
    @IBAction func listeningButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToIntermediateListening", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        upper.layer.cornerRadius = 20.0
        middle.layer.cornerRadius = 20.0
        lower.layer.cornerRadius = 20.0
        vocabulary.layer.cornerRadius = 10.0
        listening.layer.cornerRadius = 10.0
        
        
        titleLabel.text = ""
        var charIndex = 0.0
        let beginnerText = "Intermediate コース"
        for letter in beginnerText {
            Timer.scheduledTimer(withTimeInterval: 0.3 * charIndex , repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toIntermediateHome" {
            _ = segue.destination as! IntermediateUpper
            //            let destinationVC = segue.destination as! MainViewController
        } else if segue.identifier == "toIntermediateHome"{
            _ = segue.destination as! IntermediateMiddle
        } else if segue.identifier == "toIntermediateHome"{
            _ = segue.destination as! IntermediateLower
        } else if segue.identifier == "toIntermediateHome"{
            _ = segue.destination as! IntermediateVocabulary
        } else if segue.identifier == "toIntermediateHome"{
            _ = segue.destination as! IntermediateListening
        }
        
        
        
        //        } else if segue.identifier == "toBeginnerHome"{
        //            _ = segue.destination as! BeginnerListening
        //        }
        
    }
    
    
    
}
