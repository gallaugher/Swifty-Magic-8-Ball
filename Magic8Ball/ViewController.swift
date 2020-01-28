//
//  ViewController.swift
//  Magic8Ball
//
//  Created by John Gallaugher on 1/27/20.
//  Copyright © 2020 John Gallaugher. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    
    var answerNumber = 0
    
    let answers = ["It is certain",
                   "\nYes,\ndefinitely\n",
                   "\nVery\ndoubtful\n",
                   "It is\ndecidedly\nso",
                   "Without\na doubt",
                   "You may\nrely on\nit",
                   "As I see it, yes",
                   "Most likely",
                   "Outlook good",
                   "Yes",
                   "Signs point to yes",
                   "Reply hazy try again",
                   "Ask again later",
                   "Better not tell you now",
                   "Cannot predict now",
                   "Concentrate\nand ask\nagain",
                   "Don't count on it",
                   "My reply is no",
                   "My sources say no",
                   "Outlook not so good"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = ""
        resultLabel.alpha = 0.0
        resultLabel.adjustsFontSizeToFitWidth = true
        resultLabel.minimumScaleFactor = 0.3
    }
    
    func getAnswer() {
        resultLabel.text = "" // put empty string in label
        resultLabel.alpha = 0.0 // create a see-through label with alpha = 0 (zero opaqueness)
        resultLabel.text = answers.randomElement() // put an element in the see-through label
        
        // slowly fade the label in over 2 seconds to point where the resultLabel is fully opaque (alpha = 1.0)
        UIView.animate(withDuration: 2.0, animations: {self.resultLabel.alpha = 1.0})
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        getAnswer()
    }
    
    // Perform a shake
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        getAnswer()
    }
}

