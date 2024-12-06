//
//  ViewController.swift
//  Counter
//
//  Created by semrumyantsev on 07.12.2024.
//

import UIKit

class ViewController: UIViewController {

    //Привязал UI
    
    @IBOutlet weak var background: UIImageView!
        
    @IBOutlet weak var counter: UILabel!
    
    @IBOutlet weak var mainButton: UIButton!
    
    private var counterValue = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter.text = "0"
    }

    @IBAction func pressButton(_ sender: Any) {
        counterValue += 1
        counter.text = String(counterValue)
    }
    
}

