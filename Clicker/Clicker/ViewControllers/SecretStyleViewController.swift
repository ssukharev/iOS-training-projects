//
//  SecretStyleViewController.swift
//  Clicker
//
//  Created by Sergey Sukharev on 27.07.2025.
//

import UIKit
import FLAnimatedImage

public final class NewFLAnimatedImageView: FLAnimatedImageView {
    
    enum GifErrors: Error {
        case gifNotFound
    }
    
    public var fileName: String?
    
    public func playGifAnimation() throws {
        guard let path = Bundle.main.path(forResource: self.fileName, ofType: "gif"),
        let data = try? Data(contentsOf: URL(fileURLWithPath: path)) else {
            throw GifErrors.gifNotFound
        }
        self.animatedImage = FLAnimatedImage(gifData: data)
        self.contentMode = .scaleAspectFit
    }
}

class SecretStyleViewController: UIViewController {


    @IBOutlet weak var stickerCatHappy: NewFLAnimatedImageView!
    @IBOutlet weak var stickerCatFighter: NewFLAnimatedImageView!
    @IBOutlet weak var stickerCatDissapoint: NewFLAnimatedImageView!
    @IBOutlet weak var stickerCatSad: NewFLAnimatedImageView!
    @IBOutlet weak var stickerCatCute: NewFLAnimatedImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stickerCatHappy.fileName = "stickerCatHappy"
        try? stickerCatHappy.playGifAnimation()
        
        stickerCatSad.fileName = "stickerCatSad"
        try? stickerCatSad.playGifAnimation()
        
        stickerCatCute.fileName = "stickerCatCute"
        try? stickerCatCute.playGifAnimation()
        
        stickerCatDissapoint.fileName = "stickerCatDissapoint"
        try? stickerCatDissapoint.playGifAnimation()
        
        stickerCatFighter.fileName = "stickerCatFighter"
        try? stickerCatFighter.playGifAnimation()
    }
}
