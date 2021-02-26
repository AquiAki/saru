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
        ["depressor septi nasi","鼻中隔下制筋"],
        ["levator labii superioris","上唇挙筋"],
        ["levator labii superioris alaeque nasi","上唇鼻翼挙筋"],
        ["depressor labii inferioris","下唇下制筋"],
        ["levator anguli oris","口角挙筋"],
        ["depressor anguli oris","口角下制筋"],
        ["medial pterygoid","内側翼突筋"],
        ["lateral pterygoid","外側翼突筋"],
        ["temporoparietalis","側頭頭頂筋"],
        ["stapedius","アブミ骨筋"],
        ["tensor tympani","鼓膜張筋"],
        ["superior pharyngeal constrictor","上咽頭収縮筋"],
        ["middle pharyngeal constrictor","中咽頭収縮筋"],
        ["inferior pharyngeal constrictor","下咽頭収縮筋"],
        ["stylopharyngeus","茎突咽頭筋"],
        ["palatopharyngeus","口蓋咽頭筋"],
        ["salpingopharyngeus","耳管咽頭筋"],
        ["aryepiglottic muscle","披裂喉頭蓋筋"],
        ["cricothyroid","輪状甲状筋"],
        ["posterior cricoarytenoid","後輪状披裂筋"],
        ["transverse arytenoid","横披裂筋"],
        ["lateral cricoarytenoid","外側輪状披裂筋"],
        ["thyroarytenoid","甲状披裂筋"],
        ["rectus capitis anterior","前頭直筋"],
        ["rectus capitis lateralis","外側頭直筋"],
        ["rectus capitis posterior major","大後頭直筋"],
        ["rectus capitis posterior minor","小後頭直筋"],
        ["obliquus capitis superior","上頭斜筋"],
        ["obliquus capitis inferior","下頭斜筋"],
        
        
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



