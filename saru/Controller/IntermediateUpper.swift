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
        ["abductor","外転筋"],
        ["adductor","内転筋"],
        ["agonist muscle","主働筋"],
        ["synergist muscle","協働筋"],
        ["antagonist muscle","拮抗筋"],
        ["muscle fiber","筋繊維"],
        ["myofibril","筋原線維"],
        ["fascia","筋膜"],
        ["epimysium","筋外膜"],
        ["endomysium","筋内膜"],
        ["muscle spindle","筋紡錘"],
        ["fascicle","筋束"],
        ["myofilament","筋フィラメント"],
        ["corrugator supercilii","皺眉筋"],
        ["procerus","鼻根筋"],
        ["zygomaticus minor","小頬骨筋"],
        ["zygomaticus major","大頬骨筋"],
        ["risorius","笑筋"],
        ["mentalis","オトガイ筋"],
        ["masseter","咬筋"],
        ["superior rectus","上直筋"],
        ["superior oblique","上斜筋"],
        ["medial rectus","内側直筋"],
        ["lateral rectus","外側直筋"],
        ["inferior oblique","下斜筋"],
        ["inferior rectus","下直筋"],
        ["levator palpebrae superioris","上眼瞼挙筋"],
        ["transverse muscle of tongue","横舌筋"],
        ["superior longitudinal muscle of tongue","上縦舌筋"],
        ["inferior longitudinal muscle of tongue","下縦舌筋"],
        ["vertical muscle of tongue","垂直舌筋"],
        ["omohyoid","肩甲舌骨筋"],
        ["digastric","顎二腹筋"],
        ["mylohyoid","顎舌骨筋"],
        ["geniohyoid","オトガイ舌骨筋"],
        ["stylohyoid","茎突舌骨筋"],
        ["thyrohyoid","甲状舌骨筋"],
        ["sternohyoid","胸骨舌骨筋"],
        ["sternothyroid","胸骨甲状筋"],
        ["longus colli","頚長筋"],
        ["longus capitis","頭長筋"],
//        ["",""],
//        ["",""],
        
        
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



