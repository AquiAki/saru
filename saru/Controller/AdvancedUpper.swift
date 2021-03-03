//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation

class AdvancedUpper: UITableViewController {
    
    var player: AVAudioPlayer!
    var buttonName = ""
    
    let questionsList = [
        ["depressor septi nasi","鼻中隔下制筋","* depressor = 下制筋 , septum = 壁 , nasus = 鼻"],
        ["levator labii superioris","上唇挙筋","* levator = 挙筋 , labium = 唇 , superior  = 上の"],
        ["levator labii superioris alaeque nasi","上唇鼻翼挙筋","* levator = 挙筋 , labium = 唇 , superior = 上の , ala = 翼 , nasus = 鼻"],
        ["depressor labii inferioris","下唇下制筋","* depressor = 下制筋 , labium = 唇 , inferior = 下の"],
        ["levator anguli oris","口角挙筋","* levator = 挙筋 , angulus = 角 , oris = os(口)の複数形"],
        ["depressor anguli oris","口角下制筋","* depressor = 下制筋 , angulus = 角 , oris = os(口)の複数形"],
        ["medial pterygoid","内側翼突筋","* medial = 内側の , pterygoid = 翼状の"],
        ["lateral pterygoid","外側翼突筋","* lateral = 側面の , pterygoid = 翼状の"],
        ["temporoparietalis","側頭頭頂筋","* temporal = 側頭の , parietal bone = 頭頂骨"],
        ["stapedius","アブミ骨筋","* stapes = アブミ骨"],
        ["tensor tympani","鼓膜張筋","* tensor  = 張筋 , tympanic = 鼓膜の"],
        ["superior pharyngeal constrictor","上咽頭収縮筋","* superior  = 上の , pharyngeal = 咽頭の , constrictor = 収縮筋"],
        ["middle pharyngeal constrictor","中咽頭収縮筋","* middle = 真ん中の , pharyngeal = 咽頭の , constrictor = 収縮筋"],
        ["inferior pharyngeal constrictor","下咽頭収縮筋","* inferior = 下の , pharyngeal = 咽頭の , constrictor = 収縮筋"],
        ["stylopharyngeus","茎突咽頭筋","* styloid = 茎状突起の , pharynx = 咽頭"],
        ["palatopharyngeus","口蓋咽頭筋","* palato- = 口蓋 , pharynx = 咽頭"],
        ["salpingopharyngeus","耳管咽頭筋","* salpingo- = 耳管の , pharynx = 咽頭"],
        ["aryepiglottic muscle","披裂喉頭蓋筋","* arytenoid = 披裂の , epiglottic = 喉頭蓋の"],
        ["cricothyroid","輪状甲状筋","* cricoid = 輪状の , thyroid = 甲状腺"],
        ["posterior cricoarytenoid","後輪状披裂筋","* posterior = 後の , cricoid = 輪状の , arytenoid = 披裂の"],
        ["transverse arytenoid","横披裂筋","* transverse = 横の , arytenoid = 披裂の"],
        ["lateral cricoarytenoid","外側輪状披裂筋","* lateral = 側面の , cricoid = 輪状の , arytenoid = 披裂の"],
        ["thyroarytenoid","甲状披裂筋","* thyro- = 甲状腺の , arytenoid = 披裂の"],
        ["rectus capitis anterior","前頭直筋","* rectus = 直筋 , capitis = 頭部の , anterior = 前の"],
        ["rectus capitis lateralis","外側頭直筋","* rectus = 直筋 , capitis = 頭部の , lateralis = 外側の"],
        ["rectus capitis posterior major","大後頭直筋","* rectus = 直筋 , capitis = 頭部の , posterior = 後の , major = 大きい"],
        ["rectus capitis posterior minor","小後頭直筋","* rectus = 直筋 , capitis = 頭部の , posterior = 後の , minor = 小さい"],
        ["obliquus capitis superior","上頭斜筋","* oblique = 斜めの、斜筋 , capitis = 頭部の , superior  = 上の"],
        ["obliquus capitis inferior","下頭斜筋","* oblique = 斜めの、斜筋 , capitis = 頭部の , inferior = 下の"],
        
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdvancedUpperList", for: indexPath)
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





