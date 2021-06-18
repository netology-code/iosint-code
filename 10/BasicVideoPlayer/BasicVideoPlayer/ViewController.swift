//
//  Created by Netology on 18.06.2021.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    private lazy var streamURL = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_adv_example_hevc/master.m3u8")!

    private lazy var localURL: URL = {
        let path = Bundle.main.path(forResource: "test", ofType: "mp4")!
        return URL(fileURLWithPath: path)
    }()

    @IBAction func playButtonPressed(_ sender: Any) {
        // Создаём AVPlayer со ссылкой на видео.
        let player = AVPlayer(url: streamURL)

        // Создаём AVPlayerViewController и передаём ссылку на плеер.
        let controller = AVPlayerViewController()
        controller.player = player

        // Показываем контроллер модально и запускаем плеер.
        present(controller, animated: true) {
            player.play()
        }
    }
}

