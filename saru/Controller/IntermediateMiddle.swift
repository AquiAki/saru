//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation

class IntermediateMiddle: UITableViewController {
    
    var player: AVAudioPlayer!
    var buttonName = ""
    
    let questionsList = [
        ["iliocostalis cervicis","頚腸肋筋"],
        ["iliocostalis thoracis","胸腸肋筋"],
        ["iliocostalis lumborum","腰腸肋筋"],
        ["longissimus capitis","頭最長筋"],
        ["longissimus cervicis","頚最長筋"],
        ["longissimus thoracis","胸最長筋"],
        ["subcostal","肋下筋"],
        ["transversus thoracis","胸横筋"],
        ["levatores costarum","肋骨挙筋"],
        ["sternocostal triangle","胸肋三角"],
        ["caval opening","大静脈孔"],
        ["trefoil tendon","腱中心"],
        ["esophageal hiatus","食道裂孔"],
        ["aortic hiatus","大動脈裂孔"],
        ["tendinous intersection","腰肋三角"],
        ["linea alba","白線"],
        ["pyramidalis","錐体筋"],
        ["sternoclavicular ligament","胸鎖靭帯"],
        ["costoclavicular ligament","肋鎖靭帯"],
        ["acromioclavicular ligament","肩鎖靭帯"],
        ["rotator cuff","ローテータカフ"],
        ["supraspinatus","棘上筋"],
        ["infraspinatus","棘下筋"],
        ["teres minor","小円筋"],
        ["subscapularis","肩甲下筋"],
        ["coracobrachialis","烏口腕筋"],
        ["anconeus","肘筋"],
        ["brachioradialis","腕撓骨筋"],
        ["pronator quadratus","方形回内筋"],
        ["interosseous membrane of forearm","前腕骨間膜"],
        ["flexor retinaculum","屈筋支帯"],
        ["palmaris longus","長掌筋"],
        ["palmar aponeurosis","手掌腱膜"],
        ["extensor retinaculum","伸筋支帯"],
        ["extensor carpi radialis longus","長橈側手根伸筋"],
        ["extensor carpi radialis brevis","短橈側手根伸筋"],
        ["opponens digiti minimi","小指対立筋"],
        ["abductor digiti minimi","小指外転筋"],
        ["flexor digiti minimi brevis","短小指屈筋"],
        ["distal interphalangeal joint","遠位指節間関節"],
        ["proximal interphalangeal joint","近位指節間関節"],
        ["carpometacarpal joint","手根中手関節"],
        ["metacarpophalangeal joint","中手指節関節"],

        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "IntermediateMiddleList", for: indexPath)
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



