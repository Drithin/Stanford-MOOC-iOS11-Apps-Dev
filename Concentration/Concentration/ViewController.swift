//
//  ViewController.swift
//  Concentration
//
//  Created by Drithin Chakravarthy on 12/2/17.
//  Copyright © 2017 Drithin Chakravarthy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var flipCount = 0 {
        didSet{
          flipButton.text = "Flips : \(flipCount)"
        }
    }
   
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["🎃","👻","🎃","👻"]
    
    @IBOutlet weak var flipButton: UILabel!
    
    @IBAction func touchButton(_ sender: UIButton) {
        flipCount += 1
        
        if let cardNumber = cardButtons.index(of: sender){
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print ("chosen card was not in the cardButtons")
        }
    }
    
    
  
    
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        } else {
            button.setTitle(emoji, for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

