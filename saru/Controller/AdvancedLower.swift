//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation

class AdvancedLower: UITableViewController {
    
    var player: AVAudioPlayer!
    var buttonName = ""
    
    let questionsList = [
        ["internal anal sphincter","内肛門括約筋"],
        ["external anal sphincter","外肛門括約筋"],
//        ["puboprostaticus","恥骨前立腺筋"],
        ["superficial transverse perineal muscle","浅会陰横筋"],
        ["deep transverse perineal muscle","深会陰横筋"],
        ["sacrospinous ligament","仙棘靭帯"],
        ["iliolumbar ligament","腸腰靭帯"],
        ["anterior sacroiliac ligament","前仙腸靭帯"],
        ["posterior sacroiliac ligament","後仙腸靭帯"],
        ["sacrotuberous ligament","仙結節靭帯"],
        ["iliofemoral ligament","腸骨大腿靭帯"],
        ["ischiofemoral ligament","坐骨大腿靭帯"],
        ["pubofemoral ligament","恥骨大腿靭帯"],
        ["sartorius","縫工筋"],
        ["pes anserinus","鵞足"],
        ["gracilis","薄筋"],
        ["adductor minimus","小内転筋"],
        ["pectineus","恥骨筋"],
        ["iliopectineal arch","腸恥筋膜弓"],
        ["adductor canal","内転筋管"],
        ["extensor digitorum longus","長趾伸筋"],
        ["flexor digitorum longus","長趾屈筋"],
        ["extensor hallucis longus","長母趾伸筋"],
        ["flexor hallucis longus","長母趾屈筋"],
        ["quadratus plantae","足底方形筋"],
        ["plantar interossei","底側骨間筋"],
        ["supination","回外"],
        ["plantar flexion","底屈"],
        ["medial rotation","内旋"],
        ["inversion","内返し"],
        ["pronation","回内"],
        ["dorsal flexion","背屈"],
        ["lateral rotation","外旋"],
        ["eversion","外返し"],
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdvancedLowerList", for: indexPath)
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



