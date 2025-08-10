//
//  ViewController.swift
//  App_hide_and_show
//
//  Created by Sergey Sukharev on 18.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showAllButton: UIButton!
    
    @IBOutlet weak var firstImage: UIImageView!
    
    @IBOutlet weak var secondImage: UIImageView!
    
    @IBOutlet weak var thirdImage: UIImageView!
    
    @IBOutlet weak var hideFirstButton: UIButton!
    
    @IBOutlet weak var hideSecondButton: UIButton!
    
    @IBOutlet weak var hideThirdButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func showAllAction(_ sender: Any) {
        firstImage.isHidden = false
        secondImage.isHidden = false
        thirdImage.isHidden = false
    }
    
    
    
    @IBAction func hideFirstAction(_ sender: Any) {
        firstImage.isHidden = true
    }
    
    
    @IBAction func hideSecondAction(_ sender: Any) {
        secondImage.isHidden = true
    }
    
    
    @IBAction func hideThirdAction(_ sender: Any) {
        thirdImage.isHidden = true
    }
}

