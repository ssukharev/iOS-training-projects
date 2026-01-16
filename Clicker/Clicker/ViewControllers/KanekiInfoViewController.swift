//
//  KanekiInfoViewController.swift
//  Clicker
//
//  Created by Sergey Sukharev on 22.07.2025.
//

import UIKit

class KanekiInfoViewController: UIViewController {

    
    @IBOutlet weak var quoteKanekiLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let prefixString = "Кен Канеки"
        let fullText = quoteKanekiLabel.text ?? "nil"
        
        let attributedString = NSMutableAttributedString(string: fullText)
        
        attributedString.addAttribute(.font, value: UIFont.italicSystemFont(ofSize: 17), range: NSRange(location: 0, length: fullText.count))
        
        if let range = fullText.range(of: prefixString) {
            
            let nsRange = NSRange(range, in: fullText)
            
            attributedString.addAttribute(.foregroundColor, value: UIColor.red, range: nsRange)
            
            let baseFont = UIFont.systemFont(ofSize: 17)
            let boldItalicDescriptor = baseFont.fontDescriptor.withSymbolicTraits([.traitBold, .traitItalic])!
            let boldItalicFont = UIFont(descriptor: boldItalicDescriptor, size: 17)
            
            attributedString.addAttribute(.font, value: boldItalicFont, range: nsRange)
            
        }
        
        quoteKanekiLabel.attributedText = attributedString
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
