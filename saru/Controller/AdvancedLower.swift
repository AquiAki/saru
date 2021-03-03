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
        ["internal anal sphincter","内肛門括約筋","* internal = 内の , anal = 肛門の , sphincter = 括約筋"],
        ["external anal sphincter","外肛門括約筋","* external = 外の , anal = 肛門の , sphincter = 括約筋"],
//        ["puboprostaticus","恥骨前立腺筋"],
        ["superficial transverse perineal muscle","浅会陰横筋","* superficial = 表面の , transverse = 横の , perineal = 会陰の"],
        ["deep transverse perineal muscle","深会陰横筋","* deep = 深い , transverse = 横の , perineal = 会陰の"],
        ["sacrospinous ligament","仙棘靭帯","* sacro- = 仙骨の , spinous = トゲ状の , ligament = 靭帯"],
        ["iliolumbar ligament","腸腰靭帯","* ilio- = 腸骨の , 腸骨 = ilium , lumbar = 腰部の , ligament = 靭帯"],
        ["anterior sacroiliac ligament","前仙腸靭帯","* anterior = 前の , sacro- = 仙骨の , iliac = 腸骨の , ligament = 靭帯"],
        ["posterior sacroiliac ligament","後仙腸靭帯","* posterior = 後の , sacro- = 仙骨の , iliac = 腸骨の , ligament = 靭帯"],
        ["sacrotuberous ligament","仙結節靭帯","* sacro- = 仙骨の , tuberous = 結節のある , ligament = 靭帯"],
        ["iliofemoral ligament","腸骨大腿靭帯","* ilio- = 腸骨の , 腸骨 = ilium , femoral = 大腿骨の , ligament = 靭帯"],
        ["ischiofemoral ligament","坐骨大腿靭帯","* ischio- = 坐骨の , femoral = 大腿骨の , ligament = 靭帯"],
        ["pubofemoral ligament","恥骨大腿靭帯","* pubo- = 恥骨の , pubis = 恥骨 , femoral = 大腿骨の , ligament = 靭帯"],
        ["sartorius","縫工筋",""],
        ["pes anserinus","鵞足","* pes = 足 , anser = ガチョウ"],
        ["gracilis","薄筋",""],
        ["adductor minimus","小内転筋","* adductor = 内転筋 , minimus = 最小の"],
        ["pectineus","恥骨筋",""],
        ["iliopectineal arch","腸恥筋膜弓","* ilio- = 腸骨の , 腸骨 = ilium , pectineal = 恥骨の , arch = 弓形"],
        ["adductor canal","内転筋管","* adductor = 内転筋 , canal = 管"],
        ["extensor digitorum longus","長趾伸筋","* extensor  = 伸筋 , digitorum = つま先の , longus = 長い"],
        ["flexor digitorum longus","長趾屈筋","* flexor = 屈筋 , digitorum = つま先の , longus = 長い"],
        ["extensor hallucis longus","長母趾伸筋","* extensor  = 伸筋 , hallucis = 母趾 , longus = 長い"],
        ["flexor hallucis longus","長母趾屈筋","* flexor = 屈筋 , hallucis = 母趾 , longus = 長い"],
        ["quadratus plantae","足底方形筋","* quadratus = 方形筋 , planta = 足底"],
        ["plantar interossei","底側骨間筋","* plantar = 足底の , interossei = interosseus(骨間筋)の複数形"],
        ["supination","回外",""],
        ["plantar flexion","底屈","* plantar = 足底の , flexion = 屈曲"],
        ["medial rotation","内旋","* medial = 内側の , rotation = 回旋"],
        ["inversion","内返し",""],
        ["pronation","回内",""],
        ["dorsal flexion","背屈","* dorsal = 背の , flexion = 屈曲"],
        ["lateral rotation","外旋","* lateral = 側面の , rotation = 回旋"],
        ["eversion","外返し",""],
        
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
        let label3 = cell.contentView.viewWithTag(3) as! UILabel
        
        label1.text = questionsList[indexPath.row][0]
        label2.text = questionsList[indexPath.row][1]
        label3.text = questionsList[indexPath.row][2]
        
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
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 140
        
        }
}



