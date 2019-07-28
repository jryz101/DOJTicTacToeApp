//  ViewController.swift
//  DOJTicTacToe
//  Created by Jerry Tan on 28/07/2019.
//  Copyright © 2019 Starknet Technologies®. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    //activePlayer variable
    var activePlayer: Int = 1
    

    @IBAction func tappedButton(_ sender: UIButton) {
        
        // 1 - Batman 2 - Superman
        //Conditional methods to keep track player stats
        if activePlayer == 1 {
            
            //Set the image to appear when the user tap the game board.
            sender.setImage(UIImage(named: "Batman.png"), for: [])
            activePlayer = 2
            
        }else{
            
            //Set the image to appear when the user tap the game board.
            sender.setImage(UIImage(named: "Superman.png"), for: [])
            activePlayer = 1
        }
        
        print(sender.tag)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

