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
    
    @IBOutlet weak var background: UIImageView!
        
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet weak var mainButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
        
    @IBOutlet weak var history: UITextView!
    
   
    private func currentTime() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        return dateFormatter.string(from: Date())
    }
    
    private var counterValue: UInt32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter.text = "0"
        history.isEditable = false
    }

    @IBAction func pressButton(_ sender: Any) {
        counterValue += 1
        counter.text = String(counterValue)
        history.text += "\n\(currentTime()): Значение изменено на +1"
    }
    
    
    @IBAction func pressMinusButton(_ sender: Any) {
        if counterValue != 0 {counterValue -= 1
            counter.text = String(counterValue)
            history.text += "\n\(currentTime()): Значение изменено на -1"
        }
        else {
            history.text += "\n\(currentTime()): Попытка уменьшить значение счётчика ниже 0"
        }
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        counterValue = 0
        counter.text = String(counterValue)
        history.text += "\n\(currentTime()): Значение сброшено"
    }
    
    
}

