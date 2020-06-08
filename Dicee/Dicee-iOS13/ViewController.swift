//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var diceOne: UIImageView!
  @IBOutlet weak var diceTwo: UIImageView!
  @IBOutlet weak var rollBtn: UIButton!
  
  var diceImgs = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    rollDice()
  }
  
  @IBAction func rollBtnClick(_ sender: Any) {
    rollDice()
  }
  
  func rollDice() {
    diceOne.image = diceImgs.randomElement()
    diceTwo.image = diceImgs.randomElement()
  }
}

