//
//  ViewController.swift
//  Dice Game
//
//  Created by Manish Ahire on 08/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK:- Outlets
    @IBOutlet weak var imgFirstDice: UIImageView!
    @IBOutlet weak var imgSecondDice: UIImageView!
    
    //MARK:- Action on button
    @IBAction func rollButtonTapped(_ sender: UIButton) {
        
        /** Here we created an array of strings.
         Used a let keyword - to make it constant so no one can change it
         */
        let diceImageNames = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
        
        /**
         We used randomElement() function of array - Returns a random element of the collection.
         So here it returns the name of an image from the diceImageNames array.
         randomElement() returns an optional string so here we used ?? (Nil-Coalescing Operator) and give default value "DiceOne" if the randomElement() return nil/empty.
         Nil-Coalescing Operator - unwraps an optional
         */
        
        imgFirstDice.image = UIImage(named: diceImageNames.randomElement() ?? "DiceOne")
        imgSecondDice.image = UIImage(named: diceImageNames.randomElement() ?? "DiceOne")
    }
}

