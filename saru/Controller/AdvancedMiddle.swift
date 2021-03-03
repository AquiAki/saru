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
        ["spinalis capitis","頭棘筋","* spinalis = 棘筋 , capitis = 頭部の"],
        ["spinalis cervicis","頚棘筋","* spinalis = 棘筋 , cervicis = 頚の"],
        ["spinalis thoracis","胸棘筋","* spinalis = 棘筋 , thoracis = 胸の"],
        ["semispinalis capitis","頭半棘筋","* semi- = 半 , spinalis = 棘筋 , capitis = 頭部の"],
        ["semispinalis cervicis","頚半棘筋","* semi- = 半 , spinalis = 棘筋 , cervicis = 頚の"],
        ["semispinalis thoracis","胸半棘筋","* semi- = 半 , spinalis = 棘筋 , thoracis = 胸の"],
        ["multifidus cervicis","頚多裂筋","* multifidus = 多裂の , cervicis = 頚の"],
        ["multifidus thoracis","胸多裂筋","* multifidus = 多裂の , thoracis = 胸の"],
        ["multifidus lumborum","腰多裂筋","* multifidus = 多裂の , lumborum = 腰"],
        ["rotatores cervicis","頚回旋筋","* rotator = 回旋筋 , cervicis = 頚の"],
        ["rotatores thoracis","胸回旋筋","* rotator = 回旋筋 , thoracis = 胸の"],
        ["rotatores lumborum","腰回旋筋","* rotator = 回旋筋 , lumborum = 腰"],
        ["interspinales","棘間筋","* inter- = ~の間の , spinalis = 棘筋"],
        ["intertransversarii","横突間筋","* inter- = ~の間の , transversal = 横断する"],
        ["external intercostal membrane","外肋間膜","* external = 外の , inter- = ~の間の , costal = 肋骨の , membrane = 薄膜"],
        ["internal intercostal membrane","内肋間膜","* internal = 内の , inter- = ~の間の , costal = 肋骨の , membrane = 薄膜"],
        ["intercartilaginous","肋軟骨間筋","* inter- = ~の間の , cartilaginous = 軟骨性の"],
        ["serratus posterior superior","上後鋸筋","* serratus = 鋸筋 , posterior = 後の , superior  = 上の"],
        ["serratus posterior inferior","下後鋸筋","* serratus = 鋸筋 , posterior = 後の , inferior = 下の"],
        ["median arcuate ligament","正中弓状靭帯","* median = 正中の , arcuate = 弓形の , ligament = 靭帯"],
        ["medial arcuate ligament","内側弓状靭帯","* medial = 内側の , arcuate = 弓形の , ligament = 靭帯"],
        ["lateral arcuate ligament","外側弓状靭帯","* lateral = 側面の , arcuate = 弓形の , ligament = 靭帯"],
        ["camper’s fascia","カンパー筋膜","* fascia = 筋膜"],
        ["scarpa’s fascia","スカルパ筋膜","* fascia = 筋膜"],
        ["colles fascia","コリース筋膜","* fascia = 筋膜"],
        ["inguinal ligament","鼠径靭帯","* inguinal = 鼠径の , ligament = 靭帯"],
        ["inguinal canal","鼠径管","* inguinal = 鼠径の , canal = 管"],
        ["inguinal falx","鼠径鎌","* inguinal = 鼠径の , falx = 鎌"],
        ["superficial inguinal ring","浅鼠径輪","* superficial = 表面の , inguinal = 鼠径の , ring = 輪"],
        ["deep inguinal ring","深鼠径輪","* deep = 深い , inguinal = 鼠径の , ring = 輪"],
        ["umbilical ring","臍輪","* umbilical = へその , ring = 輪"],
        ["interclavicular ligament","鎖骨間靭帯","* inter- = ~の間の , clavicular = 鎖骨の , ligament = 靭帯"],
        ["trapezoid ligament","菱形靭帯","* trapezoid = 台形 , ligament = 靭帯"],
        ["conoid ligament","円錐靱帯","* conoid = 円錐形の , ligament = 靭帯"],
        ["coracoclavicular ligament","烏口鎖骨靭帯","* coracoid = 鳥口 , clavicular = 鎖骨の , ligament = 靭帯"],
        ["coracoacromial ligament","烏口肩峰靭帯","* coracoid = 鳥口 , acromial = 肩峰の , ligament = 靭帯"],
        ["coracohumeral ligament","烏口上腕靭帯","* coracoid = 鳥口 , humeral = 上腕骨の , ligament = 靭帯"],
        ["glenohumeral ligament","関節上腕靭帯","* gleno = 浅いくぼみの , humeral = 上腕骨の , ligament = 靭帯"],
        ["proximal radioulnar joint","上橈尺関節","* proximal = 中心に近い , radial = 橈骨の , ulnar = 尺骨の , joint = 関節"],
        ["annular ligament of radius","橈骨輪状靭帯","* annular = 輪状の , ligament = 靭帯 , radius = 橈骨"],
        ["flexor digitorum superficialis","浅指屈筋","* flexor = 屈筋 , digitorum = つま先の , superficial = 表面の"],
        ["flexor digitorum profundus","深指屈筋","* flexor = 屈筋 , digitorum = つま先の , profundus = 深い"],
        ["extensor digitorum communis","総指伸筋","* extensor = 伸筋 , digitorum = つま先の , communis = 共通の"],
        ["extensor indicis","示指伸筋","* extensor = 伸筋 , indicis = 示指"],
        ["extensor digiti minimi","小指伸筋","* extensor = 伸筋 , digiti = 指 , minimi = 小さい"],
        ["dorsal interossei","背側骨間筋","* dorsal = 背の , interossei = interosseus(骨間筋)の複数形"],
        ["palmar interossei","掌側骨間筋 ","* palmar = 手の平の , interossei = interosseus(骨間筋)の複数形"],
        ["lumbricals","虫様筋",""],
        ["palmaris brevis","短掌筋","* palmaris = 手の平の , brevis = 短い"],
        
        
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



