import Foundation

struct QuizBrain {
    //
    //    var randomNumber = 0
    
    var questionNumber = 0
    var score = 0
    
    var beginnerQuiz = [
        Question(q: "flexor", a: ["挙筋", "屈筋", "伸筋"], correctAnswer: "屈筋"),
        Question(q: "striated muscle", a: ["心筋", "平滑筋", "横紋筋"], correctAnswer: "横紋筋"),
        Question(q: "involuntary muscle", a: ["不随意筋", "随意筋", "骨格筋"], correctAnswer: "不随意筋"),
        Question(q: "buccinator", a: ["表情筋", "頬筋", "鼻筋"], correctAnswer: "頬筋"),
        Question(q: "orbicularis oris", a: ["眼輪筋", "後頭筋", "口輪筋"], correctAnswer: "口輪筋"),
        Question(q: "側頭筋", a: ["temporalis", "occipitalis", "frontalis"], correctAnswer: "temporalis"),
        Question(q: "オトガイ舌筋", a: ["styloglossus", "genioglossus", "hyoglossus"], correctAnswer: "genioglossus"),
        Question(q: "口蓋帆張筋", a: ["tensor veli palatini", "levator veli palatini", "palatoglossus"], correctAnswer: "tensor veli palatini"),
        Question(q: "前斜角筋", a: ["scalenus posterior", "scalenus medius", "scalenus anterior"], correctAnswer: "scalenus anterior"),
        Question(q: "広頚筋", a: ["sternocleidomastoid muscle", "uvularis", "platysma"], correctAnswer: "platysma"),
        Question(q: "splenius capitis", a: ["頚板状筋", "頭板状筋", "脊柱起立筋"], correctAnswer: "頭板状筋"),
        Question(q: "internal intercostal", a: ["外肋間筋", "内腹斜筋", "内肋間筋"], correctAnswer: "内肋間筋"),
        Question(q: "transversus abdominis", a: ["腹直筋", "腹横筋", "外腹斜筋"], correctAnswer: "腹横筋"),
        Question(q: "erector spinae", a: ["腰方形筋", "脊柱起立筋", "横隔膜"], correctAnswer: "脊柱起立筋"),
        Question(q: "subclavius", a: ["鎖骨下筋", "前鋸筋", "小胸筋"], correctAnswer: "鎖骨下筋"),
        Question(q: "僧帽筋", a: ["deltoid", "supinator", "trapezius"], correctAnswer: "trapezius"),
        Question(q: "大菱形筋", a: ["teres major", "pectoralis major", "rhomboid major"], correctAnswer: "rhomboid major"),
        Question(q: "上腕筋", a: ["brachialis", "biceps", "triceps"], correctAnswer: "brachialis"),
        Question(q: "円回内筋", a: ["latissimus dorsi", "pronator teres", "levator scapulae"], correctAnswer: "pronator teres"),
        Question(q: "長母指屈筋", a: ["flexor pollicis longus", "flexor carpi ulnaris", "flexor carpi radialis"], correctAnswer: "flexor pollicis longus"),
        Question(q: "extensor carpi ulnaris", a: ["長母指伸筋", "尺側手根伸筋", "短母指伸筋"], correctAnswer: "尺側手根伸筋"),
        Question(q: "opponens pollicis", a: ["長母指外転筋", "母指対立筋", "母指内転筋"], correctAnswer: "母指対立筋"),
        Question(q: "flexor pollicis brevis", a: ["短母指屈筋", "短母指外転筋", "短母指伸筋"], correctAnswer: "短母指屈筋"),
        Question(q: "pubococcygeus", a: ["恥骨直腸筋", "腸骨尾骨筋", "恥骨尾骨筋"], correctAnswer: "恥骨尾骨筋"),
        Question(q: "urogenital diaphragm", a: ["肛門挙筋", "尿生殖隔膜", "骨盤隔膜"], correctAnswer: "尿生殖隔膜"),
        Question(q: "大殿筋", a: ["psoas major", "gluteus maximus", "vastus lateralis"], correctAnswer: "gluteus maximus"),
        Question(q: "大腿四頭筋", a: ["quadriceps femoris", "vastus intermedius", "rectus femur"], correctAnswer: "quadriceps femoris"),
        Question(q: "梨状筋", a: ["hamstring", "cremaster", "piriformis"], correctAnswer: "piriformis"),
        Question(q: "半腱様筋", a: ["semitendinosus", "semimembranosus", "gastrocnemius"], correctAnswer: "semitendinosus"),
        Question(q: "大腿直筋", a: ["rectus femur", "triceps surae", "biceps femoris"], correctAnswer: "rectus femur"),
        Question(q: "extensor hallucis brevis", a: ["短趾伸筋", "短趾屈筋", "短母趾伸筋"], correctAnswer: "短母趾伸筋"),
        Question(q: "adduction", a: ["回旋", "外転", "内転"], correctAnswer: "内転"),
        
    ]
    
    
    //    mutating func shuffle() {
    //        for i in 0..<quizBeginner.count{
    //            var j = Int(arc4random_uniform(UInt32(quizBeginner.indices.last!)))
    //            if i != j {
    //                swap(&self[i], &self[j])
    //            }
    //        }
    //    }
    
    
    
    let beginnerListening = [
        Question(q: "extensor", a: ["伸筋","挙筋","屈筋"], correctAnswer: "伸筋"),
        Question(q: "smooth muscle", a: ["骨格筋","横紋筋","平滑筋"], correctAnswer: "平滑筋"),
        Question(q: "mimic muscle", a: ["心筋","表情筋","筋肉"], correctAnswer: "表情筋"),
        Question(q: "occipitalis", a: ["後頭筋","側頭筋","前頭筋"], correctAnswer: "後頭筋"),
        Question(q: "hyoglossus", a: ["オトガイ舌筋","舌骨舌筋","茎突舌筋"], correctAnswer: "舌骨舌筋"),
        Question(q: "palatoglossus", a: ["口蓋帆張筋","茎突舌筋","口蓋舌筋"], correctAnswer: "口蓋舌筋"),
        Question(q: "sternocleidomastoid muscle", a: ["広頚筋","後斜角筋","胸鎖乳突筋"], correctAnswer: "胸鎖乳突筋"),
        Question(q: "posterior scalene", a: ["前斜角筋","中斜角筋","後斜角筋"], correctAnswer: "後斜角筋"),
        Question(q: "splenius cervicis", a: ["頚板状筋","脊柱起立筋","頭板状筋"], correctAnswer: "頚板状筋"),
        Question(q: "rectus abdominis", a: ["外腹斜筋","腹直筋","腹横筋"], correctAnswer: "腹直筋"),
        Question(q: "quadratus lumborum", a: ["腰方形筋","内腹斜筋","小胸筋"], correctAnswer: "腰方形筋"),
        Question(q: "levator scapulae", a: ["鎖骨下筋","肩甲挙筋","前鋸筋"], correctAnswer: "肩甲挙筋"),
        Question(q: "rhomboid minor", a: ["内腹斜筋","小胸筋","小菱形筋"], correctAnswer: "小菱形筋"),
        Question(q: "pectoralis major", a: ["大菱形筋","大胸筋","大円筋"], correctAnswer: "大胸筋"),
        Question(q: "triceps", a: ["上腕三頭筋","上腕二頭筋","三角筋"], correctAnswer: "上腕三頭筋"),
        Question(q: "supinator", a: ["回外筋","円回内筋","上腕筋"], correctAnswer: "回外筋"),
        Question(q: "flexor carpi radialis", a: ["尺側手根屈筋","長母指屈筋","橈側手根屈筋"], correctAnswer: "橈側手根屈筋"),
        Question(q: "extensor pollicis brevis", a: ["短母指伸筋","尺側手根伸筋","長母指伸筋"], correctAnswer: "短母指伸筋"),
        Question(q: "abductor pollicis brevis", a: ["短母指外転筋","母指対立筋","長母指外転筋"], correctAnswer: "短母指外転筋"),
        Question(q: "pubococcygeus", a: ["腸骨尾骨筋","恥骨直腸筋","恥骨尾骨筋"], correctAnswer: "恥骨尾骨筋"),
        Question(q: "urogenital diaphragm", a: ["尿生殖隔膜","骨盤隔膜","横隔膜"], correctAnswer: "尿生殖隔膜"),
        Question(q: "gluteus minimus", a: ["梨状筋","小腰筋","小殿筋"], correctAnswer: "小殿筋"),
        Question(q: "rectus femur", a: ["内側広筋","大腿直筋","中間広筋"], correctAnswer: "大腿直筋"),
        Question(q: "quadriceps femoris", a: ["大腿二頭筋","下腿三頭筋","大腿四頭筋"], correctAnswer: "大腿四頭筋"),
        Question(q: "soleus", a: ["ヒラメ筋","半膜様筋","腓腹筋"], correctAnswer: "ヒラメ筋"),
        Question(q: "flexor digitorum brevis", a: ["短趾屈筋","短趾伸筋","短母趾屈筋"], correctAnswer: "短趾屈筋"),
        Question(q: "rotation", a: ["内転","回旋","円運動"], correctAnswer: "回旋"),
        
    ]
    
    let intermediateQuiz = [
        
        Question(q: "拮抗筋", a: ["adductor", "antagonist muscle", "synergist muscle"], correctAnswer: "antagonist muscle"),
        Question(q: "筋原線維", a: ["myofilament", "fascia", "myofibril"], correctAnswer: "myofibril"),
        Question(q: "筋外膜", a: ["endomysium", "epimysium", "fascicle"], correctAnswer: "epimysium"),
        Question(q: "オトガイ筋", a: ["risorius", "procerus", "mentalis"], correctAnswer: "mentalis"),
        Question(q: "筋紡錘", a: ["agonist muscle", "muscle fiber", "muscle spindle"], correctAnswer: "muscle spindle"),
        Question(q: "superior oblique", a: ["上直筋", "上斜筋", "上眼瞼挙筋"], correctAnswer: "上斜筋"),
        Question(q: "digastric", a: ["顎二腹筋", "顎舌骨筋", "肩甲舌骨筋"], correctAnswer: "顎二腹筋"),
        Question(q: "geniohyoid", a: ["甲状舌骨筋", "茎突舌骨筋", "オトガイ舌骨筋"], correctAnswer: "オトガイ舌骨筋"),
        Question(q: "longus colli", a: ["頭最長筋", "頭長筋", "頚長筋"], correctAnswer: "頚長筋"),
        Question(q: "iliocostalis lumborum", a: ["腰腸肋筋", "胸最長筋", "頚腸肋筋"], correctAnswer: "腰腸肋筋"),
        Question(q: "肋下筋", a: ["transversus thoracis", "levatores costarum", "subcostal"], correctAnswer: "subcostal"),
        Question(q: "腱中心", a: ["sternocostal triangle", "caval opening", "trefoil tendon"], correctAnswer: "trefoil tendon"),
        Question(q: "食道裂孔", a: ["aortic hiatus", "esophageal hiatus", "linea alba"], correctAnswer: "esophageal hiatus"),
        Question(q: "肩鎖靭帯", a: ["acromioclavicular ligament", "costoclavicular ligament", "sternoclavicular ligament"], correctAnswer: "acromioclavicular ligament"),
        Question(q: "肩甲下筋", a: ["subscapularis", "teres minor", "infraspinatus"], correctAnswer: "subscapularis"),
        Question(q: "coracobrachialis", a: ["肘筋", "烏口腕筋", "腕撓骨筋"], correctAnswer: "烏口腕筋"),
        Question(q: "palmaris longus", a: ["手掌腱膜", "長掌筋", "方形回内筋"], correctAnswer: "長掌筋"),
        Question(q: "flexor digiti minimi brevis", a: ["短橈側手根伸筋", "短小指屈筋", "小指外転筋"], correctAnswer: "短小指屈筋"),
        Question(q: "metacarpophalangeal joint", a: ["手根中手関節", "遠位指節間関節", "中手指節関節"], correctAnswer: "中手指節関節"),
        Question(q: "rectovesicalis", a: ["尿道括約筋", "排尿筋", "直腸膀胱筋"], correctAnswer: "直腸膀胱筋"),
        Question(q: "坐骨海綿体筋", a: ["perineum", "bulbospongiosus", "ischiocavernosus"], correctAnswer: "ischiocavernosus"),
        Question(q: "上双子筋", a: ["superior gemellus", "suprapiriform foramen", "obturator externus"], correctAnswer: "superior gemellus"),
        Question(q: "大内転筋", a: ["adductor magnus", "adductor longus", "adductor brevis"], correctAnswer: "adductor magnus"),
        Question(q: "血管裂孔", a: ["muscular lacuna", "vascular lacuna", "saphenous opening"], correctAnswer: "vascular lacuna"),
        Question(q: "前脛骨筋", a: ["fibularis brevis", "tibialis anterior", "adductor hallucis"], correctAnswer: "tibialis anterior"),
        Question(q: "lateral deviation", a: ["下制", "掌屈", "側屈"], correctAnswer: "側屈"),
        
    ]
    
    let intermediateListening = [
        
        Question(q: "synergist muscle", a: ["内転筋","主働筋","協働筋"], correctAnswer: "協働筋"),
        Question(q: "endomysium", a: ["筋内膜","筋外膜","筋束"], correctAnswer: "筋内膜"),
        Question(q: "muscle fiber", a: ["筋フィラメント","筋繊維","筋紡錘"], correctAnswer: "筋繊維"),
        Question(q: "risorius", a: ["オトガイ筋","鼻根筋","笑筋"], correctAnswer: "笑筋"),
        Question(q: "zygomaticus minor", a: ["小頬骨筋","咬筋","皺眉筋"], correctAnswer: "小頬骨筋"),
        Question(q: "inferior oblique", a: ["下斜筋","下直筋","内側直筋"], correctAnswer: "下斜筋"),
        Question(q: "levator palpebrae superioris", a: ["外側直筋","上直筋","上眼瞼挙筋"], correctAnswer: "上眼瞼挙筋"),
        Question(q: "vertical muscle of tongue", a: ["垂直舌筋","横舌筋","下縦舌筋"], correctAnswer: "垂直舌筋"),
        Question(q: "mylohyoid", a: ["顎舌骨筋", "肩甲舌骨筋", "オトガイ舌骨筋"], correctAnswer: "顎舌骨筋"),
        Question(q: "sternohyoid", a: ["胸骨舌骨筋", "甲状舌骨筋", "茎突舌骨筋"], correctAnswer: "胸骨舌骨筋"),
        Question(q: "longissimus cervicis", a: ["頚腸肋筋", "頚最長筋", "頚長筋"], correctAnswer: "頚最長筋"),
        Question(q: "transversus thoracis", a: ["胸最長筋", "胸腸肋筋", "胸横筋"], correctAnswer: "胸横筋"),
        Question(q: "caval opening", a: ["大静脈孔", "食道裂孔", "大動脈裂孔"], correctAnswer: "大静脈孔"),
        Question(q: "pyramidalis", a: ["錐体筋", "腱画", "腱中心"], correctAnswer: "錐体筋"),
        Question(q: "costoclavicular ligament", a: ["肩鎖靭帯", "肋鎖靭帯", "胸鎖靭帯"], correctAnswer: "肋鎖靭帯"),
        Question(q: "supraspinatus", a: ["棘上筋", "小円筋", "肩甲下筋"], correctAnswer: "棘上筋"),
        Question(q: "anconeus", a: ["腕撓骨筋", "烏口腕筋", "肘筋"], correctAnswer: "肘筋"),
        Question(q: "palmar aponeurosis", a: ["長掌筋", "前腕骨間膜", "手掌腱膜"], correctAnswer: "手掌腱膜"),
        Question(q: "abductor digiti minimi", a: ["小指外転筋", "短小指屈筋", "小指対立筋"], correctAnswer: "小指外転筋"),
        Question(q: "carpometacarpal joint", a: ["中手指節関節", "手根中手関節", "近位指節間関節"], correctAnswer: "手根中手関節"),
        Question(q: "urethral sphincter", a: ["尿道括約筋", "排尿筋", "直腸膀胱筋"], correctAnswer: "尿道括約筋"),
        Question(q: "bulbospongiosus", a: ["球海綿体筋", "直腸膀胱筋", "坐骨海綿体筋"], correctAnswer: "球海綿体筋"),
        Question(q: "suprapiriform foramen", a: ["上双子筋", "外閉鎖筋", "梨状筋上孔"], correctAnswer: "梨状筋上孔"),
        Question(q: "adductor magnus", a: ["大内転筋", "内閉鎖筋", "大腿方形筋"], correctAnswer: "大内転筋"),
        Question(q: "saphenous opening", a: ["血管裂孔", "伏在裂孔", "筋裂孔"], correctAnswer: "伏在裂孔"),
        Question(q: "plantaris", a: ["膝窩筋", "足底筋", "母趾内転筋"], correctAnswer: "足底筋"),
        Question(q: "fibularis brevis", a: ["長腓骨筋", "第三腓骨筋", "短腓骨筋"], correctAnswer: "短腓骨筋"),
        Question(q: "depression", a: ["下制", "掌屈", "挙上"], correctAnswer: "下制"),
        
    ]
    
    let advancedQuiz = [
        
        Question(q: "depressor labii inferioris", a: ["下唇下制筋", "口角下制筋", "鼻中隔下制筋","上唇鼻翼挙筋"], correctAnswer: "下唇下制筋"),
        Question(q: "stapedius", a: ["内側翼突筋", "鼓膜張筋", "側頭頭頂筋","アブミ骨筋"], correctAnswer: "アブミ骨筋"),
        Question(q: "stylopharyngeus", a: ["口蓋咽頭筋", "茎突咽頭筋", "輪状甲状筋","耳管咽頭筋"], correctAnswer: "茎突咽頭筋"),
        Question(q: "aryepiglottic muscle", a: ["後輪状披裂筋", "披裂喉頭蓋筋", "外側輪状披裂筋","甲状披裂筋"], correctAnswer: "披裂喉頭蓋筋"),
        Question(q: "obliquus capitis superior", a: ["上頭斜筋", "大後頭直筋", "外側頭直筋","前頭直筋"], correctAnswer: "上頭斜筋"),
        Question(q: "頚棘筋", a: ["rotatores cervicis", "multifidus cervicis", "spinalis cervicis","semispinalis cervicis"], correctAnswer: "spinalis cervicis"),
        Question(q: "胸多裂筋", a: ["multifidus thoracis", "semispinalis thoracis", "spinalis thoracis","rotatores thoracis"], correctAnswer: "multifidus thoracis"),
        Question(q: "横突間筋", a: ["interspinales", "internal intercostal membrane", "intercartilaginous","intertransversarii"], correctAnswer: "intertransversarii"),
        Question(q: "正中弓状靭帯", a: ["lateral arcuate ligament", "inguinal ligament", "median arcuate ligament","medial arcuate ligament"], correctAnswer: "median arcuate ligament"),
        Question(q: "浅鼠径輪", a: ["inguinal falx", "superficial inguinal ring", "umbilical ring","deep inguinal ring"], correctAnswer: "superficial inguinal ring"),
        Question(q: "trapezoid ligament", a: ["烏口鎖骨靭帯", "菱形靭帯", "鎖骨間靭帯","円錐靱帯"], correctAnswer: "菱形靭帯"),
        Question(q: "coracoacromial ligament", a: ["烏口鎖骨靭帯", "関節上腕靭帯", "烏口肩峰靭帯","烏口上腕靭帯"], correctAnswer: "烏口肩峰靭帯"),
        Question(q: "external intercostal membrane", a: ["上橈尺関節", "外肋間膜", "外側弓状靭帯","外側弓状靭帯"], correctAnswer: "外肋間膜"),
        Question(q: "extensor indicis", a: ["小指伸筋", "総指伸筋", "浅指屈筋","示指伸筋"], correctAnswer: "示指伸筋"),
        Question(q: "palmaris brevis", a: ["虫様筋", "短掌筋", "背側骨間筋","掌側骨間筋"], correctAnswer: "短掌筋"),
        Question(q: "puboprostaticus", a: ["外肛門括約筋", "恥骨前立腺筋", "浅会陰横筋","深会陰横筋"], correctAnswer: "恥骨前立腺筋"),
        Question(q: "仙結節靭帯", a: ["pubofemoral ligament", "ischiofemoral ligament", "sacrotuberous ligament","iliolumbar ligament"], correctAnswer: "sacrotuberous ligament"),
        Question(q: "腸骨大腿靭帯", a: ["iliofemoral ligament", "ischiofemoral ligament", "posterior sacroiliac ligament","sacrospinous ligament"], correctAnswer: "iliofemoral ligament"),
        Question(q: "縫工筋", a: ["pes anserinus", "pectineus", "sartorius","gracilis"], correctAnswer: "sartorius"),
        Question(q: "長趾屈筋", a: ["flexor digitorum longus", "extensor digitorum longus", "extensor hallucis longus","flexor hallucis longus"], correctAnswer: "flexor digitorum longus"),
        Question(q: "底側骨間筋", a: ["adductor canal", "plantar interossei", "quadratus plantae","adductor minimus"], correctAnswer: "plantar interossei"),
        Question(q: "supination", a: ["内返し", "回外", "内旋","底屈"], correctAnswer: "回外"),
        Question(q: "dorsal flexion", a: ["外返し", "回内", "背屈","外旋"], correctAnswer: "背屈"),
        
        
    ]
    
    let advancedListening = [
        
        Question(q: "depressor anguli oris", a: ["下唇下制筋", "口角下制筋", "上唇挙筋","鼻中隔下制筋"], correctAnswer: "口角下制筋"),
        Question(q: "tensor tympani", a: ["鼓膜張筋", "外側翼突筋", "側頭頭頂筋","アブミ骨筋"], correctAnswer: "鼓膜張筋"),
        Question(q: "palatopharyngeus", a: ["耳管咽頭筋", "茎突咽頭筋", "下咽頭収縮筋","口蓋咽頭筋"], correctAnswer: "口蓋咽頭筋"),
        Question(q: "thyroarytenoid", a: ["甲状披裂筋", "披裂喉頭蓋筋", "後輪状披裂筋","横披裂筋"], correctAnswer: "甲状披裂筋"),
        Question(q: "rectus capitis lateralis", a: ["大後頭直筋", "前頭直筋", "外側頭直筋","上頭斜筋"], correctAnswer: "外側頭直筋"),
        Question(q: "rotatores cervicis", a: ["頚回旋筋", "頚半棘筋", "頚多裂筋","頚棘筋"], correctAnswer: "頚回旋筋"),
        Question(q: "spinalis thoracis", a: ["胸棘筋", "胸回旋筋", "胸多裂筋","胸半棘筋"], correctAnswer: "胸棘筋"),
        Question(q: "intertransversarii", a: ["棘間筋", "内肋間膜", "横突間筋","肋軟骨間筋"], correctAnswer: "横突間筋"),
        Question(q: "medial arcuate ligament", a: ["烏口鎖骨靭帯", "外側弓状靭帯", "内側弓状靭帯","正中弓状靭帯"], correctAnswer: "内側弓状靭帯"),
        Question(q: "inguinal falx", a: ["深鼠径輪", "鼠径鎌", "鼠径管","鼠径靭帯"], correctAnswer: "鼠径鎌"),
        Question(q: "conoid ligament", a: ["円錐靱帯", "鼠径靭帯", "菱形靭帯","鎖骨間靭帯"], correctAnswer: "円錐靱帯"),
        Question(q: "coracohumeral ligament", a: ["烏口上腕靭帯", "烏口鎖骨靭帯", "烏口肩峰靭帯","関節上腕靭帯"], correctAnswer: "烏口上腕靭帯"),
        Question(q: "extensor digitorum communis", a: ["示指伸筋", "小指伸筋", "総指伸筋","浅指屈筋"], correctAnswer: "総指伸筋"),
        Question(q: "palmar interossei", a: ["掌側骨間筋", "深指屈筋", "背側骨間筋","短掌筋"], correctAnswer: "掌側骨間筋"),
        Question(q: "superficial transverse perineal muscle", a: ["内肛門括約筋", "外肛門括約筋", "浅会陰横筋","恥骨前立腺筋"], correctAnswer: "浅会陰横筋"),
        Question(q: "iliolumbar ligament", a: ["腸腰靭帯", "坐骨大腿靭帯", "仙棘靭帯","腸骨大腿靭帯"], correctAnswer: "腸腰靭帯"),
        Question(q: "pubofemoral ligament", a: ["仙結節靭帯", "恥骨大腿靭帯", "仙棘靭帯","後仙腸靭帯"], correctAnswer: "恥骨大腿靭帯"),
        Question(q: "sartorius", a: ["薄筋", "鵞足", "縫工筋","恥骨筋"], correctAnswer: "縫工筋"),
        Question(q: "iliopectineal arch", a: ["内転筋管", "小内転筋", "足底方形筋","腸恥筋膜弓"], correctAnswer: "腸恥筋膜弓"),
        Question(q: "extensor digitorum longus", a: ["長母趾屈筋", "長母趾伸筋", "長趾屈筋","長趾伸筋"], correctAnswer: "長趾伸筋"),
        Question(q: "quadratus plantae", a: ["底側骨間筋", "足底方形筋", "内転筋管","恥骨筋"], correctAnswer: "足底方形筋"),
        Question(q: "inversion", a: ["外返し", "内返し", "外旋","内旋"], correctAnswer: "内返し"),
        Question(q: "pronation", a: ["回外", "回内", "底屈","背屈"], correctAnswer: "回内"),
        
        
    ]
    
    lazy var shuffledQuiz = beginnerQuiz.shuffled()
    lazy var shuffledQuizListening = beginnerListening.shuffled()
    
    lazy var shuffledIntermediateQuiz = intermediateQuiz.shuffled()
    lazy var shuffledIntermediateListening = intermediateListening.shuffled()
    
    lazy var shuffledAdvancedQuiz = advancedQuiz.shuffled()
    lazy var shuffledAdvancedListening = advancedListening.shuffled()
    
    
    
    
    mutating func nextBeginnerQuestion() {
        if questionNumber + 1  < beginnerQuiz.count {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
    mutating func nextBeginnerListening() {
        if questionNumber + 1  < beginnerListening.count {
            questionNumber += 1
            //            questionNumber = Int.random(in: 0..<11)
        } else {
            score = 0
            questionNumber = 0
        }
    }
    mutating func nextIntermediateQuestion() {
        if questionNumber + 1  < intermediateQuiz.count {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
    mutating func nextIntermediateListening() {
        if questionNumber + 1  < intermediateListening.count {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
    mutating func nextAdvancedQuestion() {
        if questionNumber + 1  < advancedQuiz.count {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
    mutating func nextAdvancedListening() {
        if questionNumber + 1  < advancedListening.count {
            questionNumber += 1
        } else {
            score = 0
            questionNumber = 0
        }
    }
    
    mutating func getBeginnerText() -> String {
        return shuffledQuiz[questionNumber].text
    }
    mutating func getBeginnerAnswers() -> [String] {
        return shuffledQuiz[questionNumber].answers
    }
    mutating func getBeginnerListening() -> String {
        return shuffledQuizListening[questionNumber].text
    }
    mutating func getBeginnerListeningAnswer() -> [String] {
        return shuffledQuizListening[questionNumber].answers
    }
    
    
    mutating func getIntermediateText() -> String {
        return shuffledIntermediateQuiz[questionNumber].text
    }
    mutating func getIntermediateAnswers() -> [String] {
        return shuffledIntermediateQuiz[questionNumber].answers
    }
    mutating func getIntermediateListening() -> String {
        return shuffledIntermediateListening[questionNumber].text
    }
    mutating func getIntermediateListeningAnswer() -> [String] {
        return shuffledIntermediateListening[questionNumber].answers
    }
    
    
    mutating func getAdvancedText() -> String {
        return shuffledAdvancedQuiz[questionNumber].text
    }
    mutating func getAdvancedAnswers() -> [String] {
        return shuffledAdvancedQuiz[questionNumber].answers
    }
    mutating func getAdvancedListening() -> String {
        return shuffledAdvancedListening[questionNumber].text
    }
    mutating func getAdvancedListeningAnswer() -> [String] {
        return shuffledAdvancedListening[questionNumber].answers
    }
    
    
    mutating func checkBeginnerAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == shuffledQuiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    mutating func checkBeginnerAnswerListening(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == shuffledQuizListening[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    
    mutating func checkIntermediateAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == shuffledIntermediateQuiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    mutating func checkIntermediateAnswerListening(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == shuffledIntermediateListening[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func checkAdvancedAnswer(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == shuffledAdvancedQuiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    mutating func checkAdvancedAnswerListening(userAnswer: String) -> Bool {
        //Need to change answer to rightAnswer here.
        if userAnswer == shuffledAdvancedListening[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    
}

