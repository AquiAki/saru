//
//  ViewController.swift
//  saru
//
//  Created by akihiro kimura on 2021/02/07.
//

import UIKit
import AVFoundation

class BeginnerLower: UITableViewController {
    
    var player: AVAudioPlayer!
    var buttonName = ""
    
    let questionsList = [
        ["pelvic diaphragm","骨盤隔膜"],
        ["coccygeus muscle","尾骨筋"],
        ["iliococcygeus","腸骨尾骨筋"],
        ["pubococcygeus","恥骨尾骨筋"],
        ["puborectalis","恥骨直腸筋"],
        ["levator ani","肛門挙筋"],
        ["cremaster","精巣挙筋"],
        ["urogenital diaphragm","尿生殖隔膜"],
        ["psoas major","大腰筋"],
        ["psoas minor","小腰筋"],
        ["iliotibial tract","腸脛靱帯"],
        ["gluteus maximus","大殿筋"],
        ["gluteus medius","中殿筋"],
        ["gluteus minimus","小殿筋"],
        ["piriformis","梨状筋"],
        ["quadriceps femoris","大腿四頭筋"],
        ["rectus femoris","大腿直筋"],
        ["vastus intermedius","中間広筋"],
        ["vastus lateralis","外側広筋"],
        ["vastus medialis","内側広筋"],
        ["hamstring","ハムストリング"],
        ["biceps femoris","大腿二頭筋"],
        ["semimembranosus","半膜様筋"],
        ["semitendinosus","半腱様筋"],
        ["triceps surae","下腿三頭筋"],
        ["gastrocnemius","腓腹筋"],
        ["soleus","ヒラメ筋"],
        ["achilles tendon","アキレス腱"],
        ["extensor hallucis brevis","短母趾伸筋"],
        ["flexor hallucis brevis","短母趾屈筋"],
        ["extensor digitorum brevis","短趾伸筋"],
        ["flexor digitorum brevis","短趾屈筋"],
        ["flexion","屈曲"],
        ["extension","伸展"],
        ["hyperextension","過伸展"],
        ["abduction","外転"],
        ["adduction","内転"],
        ["rotation","回旋"],
        ["circumduction","円運動"],
        
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "BeginnerLowerList", for: indexPath)
        
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

