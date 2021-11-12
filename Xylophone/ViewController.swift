
import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    //MARK: -Atributos
    
    var player: AVAudioPlayer!
    
    func playerUrl(songName: String) {
        let songUrl = Bundle.main.url(forResource: songName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: songUrl!)
        player.play()
    }
    
    //MARK: -Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: IBActions
    
    @IBAction func keyPressed(_ sender: UIButton) {
        playerUrl(songName: sender.currentTitle!)
        // reduzindo a opacidade do botão pressionado para 0.5
        sender.alpha = 0.5
        //código a ser executado após 0.2 seg delay para retornar a opacidade ao normal
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            // o "execute:" dentro da func
            sender.alpha = 1.0
        }
    }

    
    

    
}

