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
        ["iliocostalis cervicis","頚腸肋筋","* ilio- = 腸骨の , 腸骨 = ilium , costal = 肋骨の , cervicis = 頚の"],
        ["iliocostalis thoracis","胸腸肋筋","* ilio- = 腸骨の , 腸骨 = ilium , costal = 肋骨の , thoracis = 胸の"],
        ["iliocostalis lumborum","腰腸肋筋","* ilio- = 腸骨の , 腸骨 = ilium , costal = 肋骨の , lumborum = 腰"],
        ["longissimus capitis","頭最長筋","* longissimus = 最長筋 , capitis = 頭部の"],
        ["longissimus cervicis","頚最長筋","* longissimus = 最長筋 , cervicis = 頚の"],
        ["longissimus thoracis","胸最長筋","* longissimus = 最長筋 , thoracis = 胸の"],
        ["subcostal","肋下筋","* sub- = ~の下に , costal = 肋骨の"],
        ["transversus thoracis","胸横筋","* transversus = 横筋 , thoracis = 胸の"],
        ["levatores costarum","肋骨挙筋","* levator = 挙筋 , costarum = 肋骨"],
        ["sternocostal triangle","胸肋三角","* sterno- = 胸骨 , costal = 肋骨の , triangle = 三角形"],
        ["caval opening","大静脈孔","* caval = 大静脈の , opening = 穴"],
        ["trefoil tendon","腱中心","* tri- = 3 , folium = 葉 , tendon = 腱"],
        ["esophageal hiatus","食道裂孔","* esophageal = 食道の , hiatus = 裂孔"],
        ["aortic hiatus","大動脈裂孔","* aortic = 大動脈の , hiatus = 裂孔"],
        ["tendinous intersection","腰肋三角","* tendinous  = 腱のような , inter- = ~の間の , section = 区分"],
        ["linea alba","白線","* linea = 線 , albus = 白い"],
        ["pyramidalis","錐体筋",""],
        ["sternoclavicular ligament","胸鎖靭帯","* sterno- = 胸骨 , clavicular = 鎖骨の , ligament = 靭帯"],
        ["costoclavicular ligament","肋鎖靭帯","* costo- = 肋骨 , clavicular = 鎖骨の , ligament = 靭帯"],
        ["acromioclavicular ligament","肩鎖靭帯","* acromio- = 肩峰 , clavicular = 鎖骨の , ligament = 靭帯"],
        ["rotator cuff","ローテータカフ","* rotator = 回旋筋 , cuff = 袖口"],
        ["supraspinatus","棘上筋","* supra = 上の"],
        ["infraspinatus","棘下筋","* infra- = 下の"],
        ["teres minor","小円筋","* teres = 円筋 , minor = 小さい"],
        ["subscapularis","肩甲下筋","* sub- = の下に , scapula = 肩甲骨"],
        ["coracobrachialis","烏口腕筋","* coracoid = 鳥口 , brachialis = 上腕筋"],
        ["anconeus","肘筋",""],
        ["brachioradialis","腕撓骨筋","* brachio- = 腕の , radial = 橈骨の"],
        ["pronator quadratus","方形回内筋","* pronator = 回内筋 , quadratus = 方形筋"],
        ["interosseous membrane of forearm","前腕骨間膜","* interosseous = 骨間の , membrane = 薄膜 , forearm = 前腕"],
        ["flexor retinaculum","屈筋支帯","* flexor = 屈筋 , retinaculum = 支帯"],
        ["palmaris longus","長掌筋","* palmaris = 手の平の , longus = 長い"],
        ["palmar aponeurosis","手掌腱膜","* palmar = 手の平の , aponeurosis = 腱膜"],
        ["extensor retinaculum","伸筋支帯","* extensor  = 伸筋 , retinaculum = 支帯"],
        ["extensor carpi radialis longus","長橈側手根伸筋","* extensor  = 伸筋 , carpi = carpusの複数形 , carpus = 手根骨 , radial = 橈骨の , longus = 長い"],
        ["extensor carpi radialis brevis","短橈側手根伸筋","* extensor  = 伸筋 , carpi = carpusの複数形 , carpus = 手根骨 , radial = 橈骨の , brevis = 短い"],
        ["opponens digiti minimi","小指対立筋","* opponens = 対立筋 , digiti = 指 , minimi = 小さい"],
        ["abductor digiti minimi","小指外転筋","* abductor = 外転筋 , digiti = 指 , minimi = 小さい"],
        ["flexor digiti minimi brevis","短小指屈筋","* flexor = 屈筋 , digiti = 指 , minimi = 小さい , brevis = 短い"],
        ["distal interphalangeal joint","遠位指節間関節","* distal = 末端の , inter- = ~の間の , phalangeal  = 指骨の , joint = 関節"],
        ["proximal interphalangeal joint","近位指節間関節","* proximal = 中心に近い , inter- = ~の間の , phalangeal  = 指骨の , joint = 関節"],
        ["carpometacarpal joint","手根中手関節","* carpo- = 手根の , metacarpal = 中手の , joint = 関節"],
        ["metacarpophalangeal joint","中手指節関節","* metacarpus = 中手骨 , phalangeal  = 指骨の , joint = 関節"],

        
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
            return 150
        
        }
}



