//
//  NameSelectViewController.swift
//  ChooseYourOwn
//
//  Created by student3 on 1/5/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class NameSelectViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var playerNameField: UITextField!
    
    var characterNameInsert = CharacterPresets()
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range:NSRange, replacementString string:String) -> Bool
    {
        if playerNameField.text == ""
        {
            continueButton.isEnabled = true
        }
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.isEnabled = false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let genderVC = segue.destination as! GenderSelectViewController
        characterNameInsert.playerName = playerNameField.text!
        genderVC.playerGenderSelect = characterNameInsert
    }
}
