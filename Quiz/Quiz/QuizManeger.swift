//
//  QuizManeger.swift
//  Quiz
//
//  Created by spark-03 on 2024/05/09.
//

import UIKit

class QuizManeger {
    var quizzes: [Quiz]
    var currentIndex: Int
    var score: Int
    
    enum Status {
        case inAnswer
        case done
    }
    var status: Status
    
    init() {
        quizzes = []
        
        quizzes.append(Quiz(text: "人間を超でっかい猫だと思っている？", correctAnswer: true, imageName: "cat"))
        quizzes.append(Quiz(text: "犬は食べ物のおいしさを味よりも匂いで判断している？", correctAnswer: true, imageName: "dog"))
        quizzes.append(Quiz(text: "トラのシマシマ模様は皮膚まで繋がっていない？", correctAnswer: true, imageName: "tiger"))
        quizzes.append(Quiz(text: "クマは走るときに全部の足がバラバラに動いている？", correctAnswer: true, imageName: "bear"))
        quizzes.append(Quiz(text: "パンダの一番の好物は笹である？", correctAnswer: true, imageName: "panda"))
        quizzes.append(Quiz(text: "猫は毛玉を吐く？", correctAnswer: true, imageName: "cat"))
        quizzes.append(Quiz(text: "犬はこたつで丸くなる？", correctAnswer: true, imageName: "dog"))
        
        currentIndex = 0
        score = 0
        status = .inAnswer
    }
    
    var currentQuiz: Quiz {
        get {
            return self.quizzes[currentIndex]
        }
    }
    
    func answerQuiz(answer: Bool) {
        if self.currentQuiz.correctAnswer == answer {
            score += 1
        }
    }
    
    func nextQuiz() {
        if currentIndex < quizzes.count - 1 {
            currentIndex += 1
        } else {
            status = .done
        }
    }
}
