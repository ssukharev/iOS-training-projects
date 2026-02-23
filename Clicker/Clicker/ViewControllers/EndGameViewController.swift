//
//  EndGameViewController.swift
//  Clicker
//
//  Created by Suharev Sergey on 23.02.2026.
//

import UIKit

class EndGameViewController: UIViewController {

    @IBOutlet weak var lastGameCountLabel: UILabel!
    var lastGameCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lastGameCountLabel.text = "\(lastGameCount)"
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
