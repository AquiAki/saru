//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation

class BeginnerUpper: UITableViewController,UISearchBarDelegate {
    
    var player: AVAudioPlayer!
    var buttonName = ""
    
    let questionsList = [
        ["muscle","筋肉"],
        ["skeletal muscle","骨格筋"],
        ["extensor","伸筋"],
        ["flexor","屈筋"],
        ["levator","挙筋"],
        ["voluntary muscle","随意筋"],
        ["striated muscle","横紋筋"],
        ["involuntary muscle","不随意筋"],
        ["smooth muscle","平滑筋"],
        ["cardiac muscle","心筋"],
        ["mimic muscle","表情筋"],
        ["frontalis","前頭筋"],
        ["occipitalis","後頭筋"],
        ["orbicularis oculi","眼輪筋"],
        ["nasalis","鼻筋"],
        ["buccinator","頬筋"],
        ["orbicularis oris","口輪筋"],
        ["temporalis","側頭筋"],
        ["genioglossus","オトガイ舌筋"],
        ["styloglossus","茎突舌筋"],
        ["hyoglossus","舌骨舌筋"],
        ["palatoglossus","口蓋舌筋"],
        //        ["uvularis","口蓋垂筋"],
        ["levator veli palatini","口蓋帆挙筋"],
        ["tensor veli palatini","口蓋帆張筋"],
        ["sternocleidomastoid muscle","胸鎖乳突筋"],
        ["platysma","広頚筋"],
        ["anterior scalene","前斜角筋"],
        ["middle scalene","中斜角筋"],
        ["posterior scalene","後斜角筋"],
        //        ["scalene hiatus","斜角筋隙"],
    ]
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionsList.count
    }
    
    // セルを生成し、返却するメソッドで、セルの数だけ呼び出される。
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //「reusable cell」 再利用可能なcellがあればそれを、なければ新しく作成したcellを返します。
        //再利用可能なcellは、reuseIdentifierに紐づけられたreuse queueに格納されています。
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeginnerUpperList", for: indexPath)
        
        //  cell.textLabel?.text = questionsList[indexPath.row]
        
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



