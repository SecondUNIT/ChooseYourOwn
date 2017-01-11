//
//  GenderSelectViewController.swift
//  ChooseYourOwn
//
//  Created by student3 on 1/5/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class GenderSelectViewController: UIViewController {

    var playerGenderSelect = CharacterPresets()
    
    @IBOutlet weak var characterGenderText: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterGenderText.text = "Alrighty then \(playerGenderSelect.playerName), please select your prefered gender..."
    }
    @IBAction func maleGenderSelcted(_ sender: UIButton) {
        playerGenderSelect.playerGender = "male"
    }
    
    @IBAction func femaleGenderSelected(_ sender: UIButton) {
        playerGenderSelect.playerGender = "female"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let partnerVC = segue.destination as! PartnerGenderViewController
        partnerVC.partnerGenderSelect = self.playerGenderSelect
    }
    
}
