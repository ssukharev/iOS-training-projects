//
//  TempGameViewController.swift
//  Clicker
//
//  Created by Suharev Sergey on 23.02.2026.
//

import UIKit

class TempGameViewController: UIViewController {

    @IBOutlet weak var buttonOne: UIButton!
    @IBOutlet weak var buttonTwo: UIButton!
    @IBOutlet weak var buttonThree: UIButton!
    @IBOutlet weak var viewWithButton: UIView!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var currentCount: UILabel!
    
    var gameStart: Bool = false
    
    var clicksCount: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewWithButton.isHidden = true
        buttonOne.tintColor = UIColor.red
        buttonThree.tintColor = UIColor.green
    }
    
    func hiddeAllButtonsGame() {
        buttonOne.isHidden = true
        buttonTwo.isHidden = true
        buttonThree.isHidden = true
    }
    
    func showAllButtonsGame() {
        buttonOne.isHidden = false
        buttonTwo.isHidden = false
        buttonThree.isHidden = false
    }
    
    func game() {
        let number = Int.random(in: 1...3)
        hiddeAllButtonsGame()
        if number == 1 {
            buttonOne.isHidden = false
        } else if number == 2 {
            buttonTwo.isHidden = false
        } else {
            buttonThree.isHidden = false
        }
    }
    
    func updateCountClicks() {
        clicksCount += 1
        currentCount.text = "\(clicksCount)"
    }
    
    @IBAction func pressStartGameButton(_ sender: Any) {
        gameStart = true
        startGameButton.isHidden = true
        hiddeAllButtonsGame()
        viewWithButton.isHidden = false
        game()
    }
    
    @IBAction func pressEndGameButton(_ sender: Any) {
        gameStart = false
    }
    
    @IBAction func pressButtonOne(_ sender: Any) {
        game()
        updateCountClicks()
    }
    
    @IBAction func pressButtonTwo(_ sender: Any) {
        game()
        updateCountClicks()
    }
    
    @IBAction func pressButtonThree(_ sender: Any) {
        game()
        updateCountClicks()
    }
    
    
    
     //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showEndGameSegue" {
            if let destinationVC = segue.destination as? EndGameViewController {
                destinationVC.lastGameCount = clicksCount
            }
        }
    }

}
