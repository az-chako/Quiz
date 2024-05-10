//
//  ResultViewController.swift
//  Quiz
//
//  Created by spark-03 on 2024/05/10.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textView: UITextView!
    
    var nameText: String = ""
    var score: Int = 0
    
    let quizManeger = QuizManeger()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.label.text = "\(self.nameText)さん　あなたのスコアは\(self.score)です。"
        var text = ""
        
        let correctAnswers = quizManeger.quizzes.count
        
        switch self.score {
        case 0...2:
            text = "動物に関してはあまり興味はないでしょうか？\n\nもっと頑張りましょう！"
        case 3..<correctAnswers:
            text = "動物にはかなり詳しい方ですね！\n\nもう少しです！"
        case correctAnswers:
            text = "全問正解です！\n\nおめでとうございます！"
        default:
            break
        }
        self.textView.text = text
    }
    
    @IBAction func pushResultButton(_ sender: Any) {
        self.navigationController?.popToRootViewController(animated: true)
    }
}
