//
//  ViewController.swift
//  Quiz
//
//  Created by spark-03 on 2024/04/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.label.text = "Hello"
        //テキストの変更
        
    }
    
    @IBAction func pressButton(_ sender: Any) {
        self.label.text = "ボタンを押しました"
        //ボタンクリックでテキスト変更
        self.label.textColor = UIColor.red
        //テキストの色が赤になるように変更
    }
    
}

