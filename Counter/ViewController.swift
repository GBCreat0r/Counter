//
//  ViewController.swift
//  Counter
//
//  Created by semrumyantsev on 07.12.2024.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    //Привязал UI
    
    @IBOutlet weak private var background: UIImageView!
        
    @IBOutlet weak private var counter: UILabel!
    
    @IBOutlet weak private var mainButton: UIButton!
    
    @IBOutlet weak private var minusButton: UIButton!
    
    @IBOutlet weak private var resetButton: UIButton!
        
    @IBOutlet weak private var history: UITextView!
    
   
    private var counterValue: UInt32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        counter.text = "0"
        history.isEditable = false
    }

    private func currentTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: Date())
    }
    
    
    @IBAction private func pressButton(_ sender: Any) {
        counterValue += 1
        counter.text = String(counterValue)
        history.text += "\n\(currentTime()): Значение изменено на +1"
    }
    
    
    @IBAction private func pressMinusButton(_ sender: Any) {
        if counterValue != 0 {counterValue -= 1
            counter.text = String(counterValue)
            history.text += "\n\(currentTime()): Значение изменено на -1"
        }
        else {
            history.text += "\n\(currentTime()): Попытка уменьшить значение счётчика ниже 0"
        }
        
    }
    
    @IBAction private func resetButton(_ sender: Any) {
        counterValue = 0
        counter.text = String(counterValue)
        history.text += "\n\(currentTime()): Значение сброшено"
    }
    
    
}

