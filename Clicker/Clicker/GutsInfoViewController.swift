//
//  GutsInfoViewController.swift
//  Clicker
//
//  Created by Sergey Sukharev on 25.07.2025.
//

import UIKit

class GutsInfoViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let prefixString = "Чёрный мечник"
        let fullText = welcomeLabel.text ?? "nil"

        let attributedString = NSMutableAttributedString(string: fullText)
        
        if let range = fullText.range(of: prefixString) {
            
            let nsRange = NSRange(range, in: fullText)
            
            attributedString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 27), range: nsRange)
            
        }
        welcomeLabel.attributedText = attributedString
    }
    
}
