//
//  ViewController.swift
//  Quiz
//
//  Created by Mohamed Salad on 11/13/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex = currentQuestionIndex + 1
        if(currentQuestionIndex == 3){
            currentQuestionIndex = 0
        }
        answerLabel.text = "???"
        updateQuestion()
        
    }
    @IBOutlet weak var answerLabel: UILabel!
    
    let questions = [
    "Whats 7+7",
    "Whats the capital of Vermont",
    "What is cognac made from?"
    ]
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    var currentQuestionIndex: Int = 0
    func updateQuestion(){
        questionLabel.text = questions[currentQuestionIndex]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateQuestion()
    }

    @IBAction func showAnswer(_ sender: UIButton) {
        answerLabel.text = answers[currentQuestionIndex]
    }
    
}

