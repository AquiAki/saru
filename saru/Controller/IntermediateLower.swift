//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation

class IntermediateLower: UITableViewController {
    
    var player: AVAudioPlayer!
    var buttonName = ""
    
    let questionsList = [
        ["detrusor","排尿筋"],
        ["rectovesicalis","直腸膀胱筋"],
        ["urethral sphincter","尿道括約筋"],
        ["perineum","会陰"],
        ["bulbospongiosus","球海綿体筋"],
        ["ischiocavernosus","坐骨海綿体筋"],
        ["suprapiriform foramen","梨状筋上孔"],
        ["infrapiriform foramen","梨状筋下孔"],
        ["obturator externus","外閉鎖筋"],
        ["obturator internus","内閉鎖筋"],
        ["superior gemellus","上双子筋"],
        ["inferior gemellus","下双子筋"],
        ["quadratus femoris","大腿方形筋"],
        ["adductor longus","長内転筋"],
        ["adductor brevis","短内転筋"],
        ["adductor magnus","大内転筋"],
        ["muscular lacuna","筋裂孔"],
        ["vascular lacuna","血管裂孔"],
        ["saphenous opening","伏在裂孔"],
        ["plantaris","足底筋"],
        ["popliteus","膝窩筋"],
        ["tibialis anterior","前脛骨筋"],
        ["tibialis posterior","後脛骨筋"],
        ["fibularis longus","長腓骨筋"],
        ["fibularis brevis","短腓骨筋"],
        ["fibularis tertius","第三腓骨筋"],
        ["adductor hallucis","母趾内転筋"],
        ["elevation","挙上"],
        ["depression","下制"],
        ["lateral deviation","側屈"],
        ["palmar flexion","掌屈"],
        
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionsList.count
    }
    
    // セルを生成し、返却するメソッドで、セルの数だけ呼び出される。
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //「reusable cell」 再利用可能なcellがあればそれを、なければ新しく作成したcellを返します。
        //再利用可能なcellは、reuseIdentifierに紐づけられたreuse queueに格納されています。
        let cell = tableView.dequeueReusableCell(withIdentifier: "IntermediateLowerList", for: indexPath)
        let label1 = cell.contentView.viewWithTag(1) as! UILabel
        let label2 = cell.contentView.viewWithTag(2) as! UILabel
        
        label1.text = questionsList[indexPath.row][0]
        label2.text = questionsList[indexPath.row][1]
        
        return cell
    }
    
    //選択したセル
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        buttonName = questionsList[indexPath.row][0]
        playSound(soundName: buttonName)
    }
    
    
    func playSound(soundName:String) {
        //        print(soundName)
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToMain" {
            _ = segue.destination as! MainViewController
            //            let destinationVC = segue.destination as! MainViewController
        }
    }
}



