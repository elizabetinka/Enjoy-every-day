//
//  ViewController.swift
//  Enjoy every moment
//
//  Created by Елизавета Кравченкова on 23.02.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var resultButton: UIButton!
    
    private var daysOfLife = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultButton.layer.cornerRadius = 12
    }
    
    @IBAction func datePicker(_ sender: UIDatePicker) {
        daysOfLife = Int((-sender.date.timeIntervalSinceNow) / 86400)
        // Более красивая реализация, без костылей для проработки падежей,
        // но она ведет себя не корректно и не естественно при sender.date >= Date.now
        //var range = sender.date ..< Date.now
        //daysOfLife = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
    
    @IBAction func resultTapped() {
        switch daysOfLife {
        case 1:
            answerLabel.text = "Ты наслаждаешься жизнью уже 1 день"
            
        case 2...4:
            answerLabel.text = "Ты наслаждаешься жизнью уже \(daysOfLife) дня"
        default:
            answerLabel.text = "Ты наслаждаешься жизнью уже \(daysOfLife) дней"
        }
    }
}

