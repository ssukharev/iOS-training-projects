//
//  SecretStyleViewController.swift
//  Clicker
//
//  Created by Sergey Sukharev on 27.07.2025.
//

import UIKit
import FLAnimatedImage

class SecretStyleViewController: UIViewController {

//    @IBOutlet weak var stickerCat1: FLAnimatedImageView!

    
    @IBOutlet weak var stickerCatDissapoint: FLAnimatedImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playGifFromAssets(named: "stickerCatDissapoint")
    }

    private func playGifFromAssets(named name: String) {
        guard let asset = NSDataAsset(name: name) else {
            return
        }
        let animated = FLAnimatedImage(animatedGIFData: asset.data)
        stickerCatDissapoint.contentMode = .scaleAspectFit
        stickerCatDissapoint.animatedImage = animated
    }
}
