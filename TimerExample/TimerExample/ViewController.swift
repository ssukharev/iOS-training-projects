//
//  ViewController.swift
//  TimerExample
//
//  Created by Sergey Sukharev on 05.09.2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var counterLabel: UILabel!
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var stopButton: UIButton!
    
    @IBOutlet weak var startButton: UIButton!
    
    var count = 0
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printCountValue()
        stopButton.isEnabled = false
    }

    
    func printCountValue() {
        counterLabel.text = "Second passed: \(count)"
    }

    @IBAction func stopButtonAction(_ sender: Any) {
        timer?.invalidate()
        timer = nil
        startButton.isEnabled = true
        mySwitch.isEnabled = true
        stopButton.isEnabled = false
    }
    
    
    @IBAction func startButtonAction(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countTime), userInfo: nil, repeats: true)
        startButton.isEnabled = false
        mySwitch.isEnabled = false
        stopButton.isEnabled = true
    }
    
    @objc func countTime() {
        if mySwitch.isOn {
            count += 1
        } else {
            count -= 1
        }
        printCountValue()
    }
}

