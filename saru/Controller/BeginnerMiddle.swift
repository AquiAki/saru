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
        ["splenius capitis","頭板状筋"],
        ["splenius cervicis","頚板状筋"],
        ["erector spinae","脊柱起立筋"],
        ["external intercostal","外肋間筋"],
        ["internal intercostal","内肋間筋"],
        ["diaphragm","横隔膜"],
        ["rectus abdominis","腹直筋"],
        ["abdominal external oblique","外腹斜筋"],
        ["abdominal internal oblique","内腹斜筋"],
        ["transversus abdominis","腹横筋"],
        ["quadratus lumborum","腰方形筋"],
        ["serratus anterior","前鋸筋"],
        ["pectoralis minor","小胸筋"],
        ["subclavius","鎖骨下筋"],
        ["levator scapulae","肩甲挙筋"],
        ["trapezius","僧帽筋"],
        ["rhomboid major","大菱形筋"],
        ["rhomboid minor","小菱形筋"],
        ["pectoralis major","大胸筋"],
        ["latissimus dorsi","広背筋"],
        ["teres major","大円筋"],
        ["deltoid","三角筋"],
        ["brachialis","上腕筋"],
        ["triceps","上腕三頭筋"],
        ["biceps","上腕二頭筋"],
        ["supinator","回外筋"],
        ["pronator teres","円回内筋"],
        ["humeroulnar joint","腕尺関節"],
        ["humeroradial joint","腕橈関節"],
        ["radial deviation","橈屈"],
        ["ulnar deviation","尺屈"],
        ["flexor carpi radialis","橈側手根屈筋"],
        ["flexor carpi ulnaris","尺側手根屈筋"],
        ["flexor pollicis longus","長母指屈筋"],
        ["extensor carpi ulnaris","尺側手根伸筋"],
        ["extensor pollicis longus","長母指伸筋"],
        ["extensor pollicis brevis","短母指伸筋"],
        ["abductor pollicis longus","長母指外転筋"],
        ["adductor pollicis","母指内転筋"],
        ["opponens pollicis","母指対立筋"],
        ["abductor pollicis brevis","短母指外転筋"],
        ["flexor pollicis brevis","短母指屈筋"],
        //        ["",""],
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
        
        label1.text = questionsLists[indexPath.row][0]
        label2.text = questionsLists[indexPath.row][1]
        
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
}
