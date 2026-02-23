//
//  MenuViewController.swift
//  Clicker
//
//  Created by Sergey Sukharev on 20.07.2025.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var resultLastGameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backToMenuViewController(sender: UIStoryboardSegue) {
        if let segueVC = sender.source as? TempGameViewController {
            resultLastGameLabel.text = "\(segueVC.clicksCount)"
        }
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
