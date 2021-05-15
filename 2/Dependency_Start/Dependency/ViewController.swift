//
//  ViewController.swift
//  Dependency
//
//  Created by Artem Novichkov on 14.05.2021.
//

import UIKit
//import SnapKit
//import Kingfisher
//import DeckOfPlayingCards

class ViewController: UIViewController {
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 12
        imageView.backgroundColor = .quaternarySystemFill
        return imageView
    }()
    
    private lazy var url: URL? = URL(string: "https://avatars.githubusercontent.com/u/10639145")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SnapKit
//        self.view.addSubview(imageView)
//        imageView.snp.makeConstraints { make in
//            make.width.height.equalTo(100)
//            make.center.equalTo(self.view)
//        }
        
        // Kingfisher
//        imageView.kf.setImage(with: url)
        
        // DeckOfPlayingCards
//        var deck = Deck.standard52CardDeck()
//        deck.shuffle()
//
//        for _ in 0..<10 {
//            guard let card = deck.deal() else {
//                print("No More Cards!")
//                break
//            }
//
//            print(card)
//        }
    }
}
