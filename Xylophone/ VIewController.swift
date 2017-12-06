import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {

        let soundURL = Bundle.main.url(forResource: "note1", withExtension: "wav")
//
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
//        switch sender.tag {
//        case 1:
//            print("note 1")
//        case 2:
//            print("note 2")
//        case 3:
//            print("note 3")
//        case 4:
//            print("note 4")
//        case 5:
//            print("note 5")
//        case 6:
//            print("note 6")
//        default:
//            print("note 7")
//        }
    }

}

