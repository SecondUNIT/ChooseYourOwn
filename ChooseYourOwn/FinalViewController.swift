//
//  FinalViewController.swift
//  ChooseYourOwn
//
//  Created by student3 on 1/10/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    var characterSelctions = CharacterPresets()
    
    @IBOutlet weak var confirmationText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confirmationText.text = "Your name is \(characterSelctions.playerName) and you are a \(characterSelctions.playerGender), and you prefer a \(characterSelctions.partnerGender) partner."
    }

}
