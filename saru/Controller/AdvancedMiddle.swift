//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation

class AdvancedMiddle: UITableViewController {
    
    var player: AVAudioPlayer!
    var buttonName = ""
    
    let questionsList = [
        ["spinalis capitis","頭棘筋"],
        ["spinalis cervicis","頚棘筋"],
        ["spinalis thoracis","胸棘筋"],
        ["semispinalis capitis","頭半棘筋"],
        ["semispinalis cervicis","頚半棘筋"],
        ["semispinalis thoracis","胸半棘筋"],
        ["multifidus cervicis","頚多裂筋"],
        ["multifidus thoracis","胸多裂筋"],
        ["multifidus lumborum","腰多裂筋"],
        ["rotatores cervicis","頚回旋筋"],
        ["rotatores thoracis","胸回旋筋"],
        ["rotatores lumborum","腰回旋筋"],
        ["interspinales","棘間筋"],
        ["intertransversarii","横突間筋"],
        ["external intercostal membrane","外肋間膜"],
        ["internal intercostal membrane","内肋間膜"],
        ["intercartilaginous","肋軟骨間筋"],
        ["serratus posterior superior","上後鋸筋"],
        ["serratus posterior inferior","下後鋸筋"],
        ["median arcuate ligament","正中弓状靭帯"],
        ["medial arcuate ligament","内側弓状靭帯"],
        ["lateral arcuate ligament","外側弓状靭帯"],
        ["camper’s fascia","カンパー筋膜"],
        ["scarpa’s fascia","スカルパ筋膜"],
        ["colles fascia","コリース筋膜"],
        ["inguinal ligament","鼠径靭帯"],
        ["inguinal canal","鼠径管"],
        ["inguinal falx","鼠径鎌"],
        ["superficial inguinal ring","浅鼠径輪"],
        ["deep inguinal ring","深鼠径輪"],
        ["umbilical ring","臍輪"],
        ["interclavicular ligament","鎖骨間靭帯"],
        ["trapezoid ligament","菱形靭帯"],
        ["conoid ligament","円錐靱帯"],
        ["coracoclavicular ligament","烏口鎖骨靭帯"],
        ["coracoacromial ligament","烏口肩峰靭帯"],
        ["coracohumeral ligament","烏口上腕靭帯"],
        ["glenohumeral ligament","関節上腕靭帯"],
        ["proximal radioulnar joint","上橈尺関節"],
        ["annular ligament of radius","橈骨輪状靭帯"],
        ["flexor digitorum superficialis","浅指屈筋"],
        ["flexor digitorum profundus","深指屈筋"],
        ["extensor digitorum communis","総指伸筋"],
        ["extensor indicis","示指伸筋"],
        ["extensor digiti minimi","小指伸筋"],
        ["dorsal interossei","背側骨間筋"],
        ["palmar interossei","掌側骨間筋 "],
        ["lumbricals","虫様筋"],
        ["palmaris brevis","短掌筋"],
        
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "AdvancedMiddleList", for: indexPath)
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



