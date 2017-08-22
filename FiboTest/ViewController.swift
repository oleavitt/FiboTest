//
//  ViewController.swift
//  FiboTest
//
//  Created by Oren Leavitt on 8/22/17.
//  Copyright © 2017 Oren Leavitt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var resultLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        inputText.text = "1"
        OnGo(inputText)
    }

    @IBAction func OnGo(_ sender: Any) {
        guard
            let text = inputText.text,
            let inputValue = Int(text) else {
            return
        }
        
        Fibo.count = 0
        let result = Fibo.rfib(inputValue)
        resultLabel.text = String("\(result) : (\(Fibo.count))")
        
        Fibo.count = 0
        let result2 = Fibo.startRfibMemo(inputValue)
        resultLabel2.text = String("\(result2) : (\(Fibo.count))")
    }
}

