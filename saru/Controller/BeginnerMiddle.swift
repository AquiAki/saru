//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation

class BeginnerMiddle: UITableViewController {
    
    var player: AVAudioPlayer!
    var buttonName = ""
    
    let questionsLists = [
        ["splenius capitis","頭板状筋","* splenius = 板状筋 , capitis = 頭部の"],
        ["splenius cervicis","頚板状筋","* splenius = 板状筋 , cervicis = 頚の"],
        ["erector spinae","脊柱起立筋","* erector = 起立筋 , spinae = 脊柱"],
        ["external intercostal","外肋間筋","* external = 外の , inter- = ~の間の , costal = 肋骨の"],
        ["internal intercostal","内肋間筋","* internal = 内の , inter- = ~の間の , costal = 肋骨の"],
        ["diaphragm","横隔膜","* dia- = 横切って , phragm = フェンス"],
        ["rectus abdominis","腹直筋","* rectus = 直筋 , abdomin- = 腹部の"],
        ["abdominal external oblique","外腹斜筋","* abdominal = 腹部の , external = 外の , oblique = 斜めの、斜筋"],
        ["abdominal internal oblique","内腹斜筋","* abdominal = 腹部の , internal = 内の , oblique = 斜めの、斜筋"],
        ["transversus abdominis","腹横筋","* transversus = 横筋 , abdomin- = 腹部の"],
        ["quadratus lumborum","腰方形筋","* quadratus = 方形筋 , lumborum = 腰"],
        ["serratus anterior","前鋸筋","* serratus = 鋸筋 , anterior = 前の"],
        ["pectoralis minor","小胸筋","* pectoralis = 胸筋 , minor = 小さい"],
        ["subclavius","鎖骨下筋","* sub- = ~の下に , clavicula = 鎖骨"],
        ["levator scapulae","肩甲挙筋","* levator = 挙筋 , scapulae = scapulaの複数形 , scapula = 肩甲骨"],
        ["trapezius","僧帽筋",""],
        ["rhomboid major","大菱形筋","* rhomboid = 菱形筋 , major = 大きい"],
        ["rhomboid minor","小菱形筋","* rhomboid = 菱形筋 , minor = 小さい"],
        ["pectoralis major","大胸筋","* pectoralis = 胸筋 , major = 大きい"],
        ["latissimus dorsi","広背筋","* latissimus = 広い , dorsi = 背筋"],
        ["teres major","大円筋","* teres = 円筋 , major = 大きい"],
        ["deltoid","三角筋","* delta = 三角形のもの"],
        ["brachialis","上腕筋","* brachio- = 腕"],
        ["triceps","上腕三頭筋","* tri- = 3 , caput = 頭"],
        ["biceps","上腕二頭筋","* bi- = 2 , caput = 頭"],
        ["supinator","回外筋","* supination = 回外"],
        ["pronator teres","円回内筋","* pronator = 回内筋 , teres = 円筋"],
        ["humeroulnar joint","腕尺関節","* humero- = 上腕骨の , ulnar = 尺骨の , joint = 関節"],
        ["humeroradial joint","腕橈関節","* humero- = 上腕骨の , radial = 橈骨の , joint = 関節"],
        ["radial deviation","橈屈","* radial = 橈骨の , deviation = 逸脱"],
        ["ulnar deviation","尺屈","* ulnar = 尺骨の , deviation = 逸脱"],
        ["flexor carpi radialis","橈側手根屈筋","* flexor = 屈筋 , carpi = carpusの複数形 , carpus = 手根骨 , radial = 橈骨の"],
        ["flexor carpi ulnaris","尺側手根屈筋","* flexor = 屈筋 , carpi = carpusの複数形 , carpus = 手根骨 , ulnar = 尺骨の"],
        ["flexor pollicis longus","長母指屈筋","* flexor = 屈筋 , pollicis = 母指 , longus = 長い"],
        ["extensor carpi ulnaris","尺側手根伸筋","* extensor  = 伸筋 , carpi = carpusの複数形 , carpus = 手根骨 , ulnar = 尺骨の"],
        ["extensor pollicis longus","長母指伸筋","* extensor  = 伸筋 , pollicis = 母指 , longus = 長い"],
        ["extensor pollicis brevis","短母指伸筋","* extensor  = 伸筋 , pollicis = 母指 , brevis = 短い"],
        ["abductor pollicis longus","長母指外転筋","* abductor = 外転筋 , pollicis = 母指 , longus = 長い"],
        ["adductor pollicis","母指内転筋","* adductor = 内転筋 , pollicis = 母指"],
        ["opponens pollicis","母指対立筋","* opponens = 対立筋 , pollicis = 母指"],
        ["abductor pollicis brevis","短母指外転筋","* abductor = 外転筋 , pollicis = 母指 , brevis = 短い"],
        ["flexor pollicis brevis","短母指屈筋","* flexor = 屈筋 , pollicis = 母指 , brevis = 短い"],
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionsLists.count
    }
    
    // セルを生成し、返却するメソッドで、セルの数だけ呼び出される。
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //「reusable cell」 再利用可能なcellがあればそれを、なければ新しく作成したcellを返します。
        //再利用可能なcellは、reuseIdentifierに紐づけられたreuse queueに格納されています。
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeginnerMiddleList", for: indexPath)
        let label1 = cell.contentView.viewWithTag(1) as! UILabel
        let label2 = cell.contentView.viewWithTag(2) as! UILabel
        let label3 = cell.contentView.viewWithTag(3) as! UILabel
        
        label1.text = questionsLists[indexPath.row][0]
        label2.text = questionsLists[indexPath.row][1]
        label3.text = questionsLists[indexPath.row][2]
        
        return cell
    }
    
    //選択したセル
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        buttonName = questionsLists[indexPath.row][0]
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
