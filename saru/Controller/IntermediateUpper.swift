//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation

class IntermediateUpper: UITableViewController {
    
    var player: AVAudioPlayer!

    var buttonName = ""
    
    let questionsList = [
        ["abductor","外転筋",""],
        ["adductor","内転筋",""],
        ["agonist muscle","主働筋",""],
        ["synergist muscle","協働筋",""],
        ["antagonist muscle","拮抗筋",""],
        ["muscle fiber","筋繊維","* fiber = 繊維細胞"],
        ["myofibril","筋原線維","* myo- = 筋 , fibril = 糸"],
        ["fascia","筋膜",""],
        ["epimysium","筋外膜","* epi- = 上の"],
        ["endomysium","筋内膜","* endo- = 内に"],
        ["muscle spindle","筋紡錘","* spindle = 紡錘"],
        ["fascicle","筋束",""],
        ["myofilament","筋フィラメント","* myo- = 筋"],
        ["corrugator supercilii","皺眉筋","* super- = ~の上に , cilium = まぶた"],
        ["procerus","鼻根筋",""],
        ["zygomaticus minor","小頬骨筋","* zygomatic bone = 頬骨 , minor = 小さい"],
        ["zygomaticus major","大頬骨筋","* zygomatic bone = 頬骨 , major = 大きい"],
        ["risorius","笑筋",""],
        ["mentalis","オトガイ筋",""],
        ["masseter","咬筋",""],
        ["superior rectus","上直筋","* superior  = 上の , rectus = 直筋"],
        ["superior oblique","上斜筋","* superior  = 上の , oblique = 斜めの、斜筋"],
        ["medial rectus","内側直筋","* medial = 内側の , rectus = 直筋"],
        ["lateral rectus","外側直筋","* lateral = 側面の , rectus = 直筋"],
        ["inferior oblique","下斜筋","* inferior = 下の , oblique = 斜めの、斜筋"],
        ["inferior rectus","下直筋","* inferior = 下の , rectus = 直筋"],
        ["levator palpebrae superioris","上眼瞼挙筋","* levator = 挙筋 , palpebrae = 眼瞼 , superior  = 上の"],
        ["transverse muscle of tongue","横舌筋","* transverse = 横の , tongue = 舌"],
        ["superior longitudinal muscle of tongue","上縦舌筋","* superior  = 上の , longitudinal = 縦の , tongue = 舌"],
        ["inferior longitudinal muscle of tongue","下縦舌筋","* inferior = 下の , longitudinal = 縦の , tongue = 舌"],
        ["vertical muscle of tongue","垂直舌筋","* vertical = 垂直の , tongue = 舌"],
        ["omohyoid","肩甲舌骨筋","* omo- = 肩に関連した , hyoid = 舌骨"],
        ["digastric","顎二腹筋","* di- = 二重の"],
        ["mylohyoid","顎舌骨筋","* mylo- = 下顎の , hyoid = 舌骨"],
        ["geniohyoid","オトガイ舌骨筋","* genio- = 顎 , hyoid = 舌骨"],
        ["stylohyoid","茎突舌骨筋","* styloid- = 茎状突起の , hyoid = 舌骨"],
        ["thyrohyoid","甲状舌骨筋","* thyro- = 甲状腺の , hyoid = 舌骨"],
        ["sternohyoid","胸骨舌骨筋","* sterno- = 胸骨 , hyoid = 舌骨"],
        ["sternothyroid","胸骨甲状筋","* sterno- = 胸骨 , thyroid = 甲状腺"],
        ["longus colli","頚長筋","* longus = 長い , collum(colliは属格) = 頚"],
        ["longus capitis","頭長筋","* longus = 長い , capitis = 頭部の"],
        
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "IntermediateUpperList", for: indexPath)
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
            return 130
        
        }
}



