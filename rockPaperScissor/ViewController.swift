//
//  ViewController.swift
//  rockPaperScissor
//
//  Created by Javier Perez Primary on 12/14/17.
//  Copyright © 2017 JavierPerez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var robotLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var tryAgain: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resetGame()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func resetGame() {
        robotLabel.text = "🤖"
        resultLabel.text = "Rock, Paper, Scissors"
        
        rock.isHidden = false
        rock.isEnabled = true
        paper.isHidden = false
        paper.isEnabled = true
        scissors.isHidden = false
        scissors.isEnabled = true
        tryAgain.isHidden = true
    }
    
    func play(_ turn: Sign) {
        rock.isEnabled = false
        paper.isEnabled = false
        scissors.isEnabled = false
        
        let otherPlayer = rand()
    
        
  
        
    }
    
    @IBAction func playAgain(_ sender: Any) {
    resetGame()
    }
    
    @IBAction func rockAction(_ sender: Any) {
        play(Sign.rock)
    }
    
    @IBAction func paperAction(_ sender: Any) {
        play(Sign.paper)
    }
    @IBAction func scissorsAction(_ sender: Any){
   play(Sign.scissors)
    }
}

