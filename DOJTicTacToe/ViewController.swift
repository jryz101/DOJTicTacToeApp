//  ViewController.swift
//  DOJTicTacToe
//  Created by Jerry Tan on 28/07/2019.
//  Copyright © 2019 Starknet Technologies®. All rights reserved.


import UIKit

class ViewController: UIViewController {
    
    //activegame variable
    var activeGame = true
    
    //activePlayer variable
    var activePlayer: Int = 1
    
    //gameState variable
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0,]
    
    //WinningCombinations array.
    let winningCombinations = [[0, 1, 2],[3, 4, 5],[6, 7, 8],[0, 3, 6], [1, 4, 7],[2, 5, 8], [0, 4, 8],[2,4,6]]
    

    @IBAction func tappedButton(_ sender: UIButton) {
        
        //Set activePosition equals to sender.tag - 1
        let activePosition = sender.tag - 1
        
        
        // 1 - Batman 2 - Superman
        //Conditional methods to keep track activePlayer stats
        if gameState[activePosition] == 0 && activeGame {
            
        gameState[activePosition] = activePlayer
        
        
        if activePlayer == 1 {
            
            //Set the image to appear when the user tap the game board.
            sender.setImage(UIImage(named: "Batman.png"), for: [])
            activePlayer = 2
            
        }else{
            
            //Set the image to appear when the user tap the game board.
            sender.setImage(UIImage(named: "Superman.png"), for: [])
            activePlayer = 1
        }
        //For in loop combination algorithm to determine winner.
        for combination in winningCombinations {
                
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                    
                    //Winner results
                    activeGame = false
                    
                    //Writes the textual representations of the given items into the standard output.
                    print(gameState[combination[0]])
                    
                    
                }
            }
    }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

