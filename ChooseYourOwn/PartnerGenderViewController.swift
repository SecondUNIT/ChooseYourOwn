//
//  PartnerGenderViewController.swift
//  ChooseYourOwn
//
//  Created by student3 on 1/5/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class PartnerGenderViewController: UIViewController {

    var partnerGenderSelect = CharacterPresets()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func malePartnerSelect(_ sender: UIButton) {
        partnerGenderSelect.partnerGender = "male"
    }
    @IBAction func femalePartnerSelect(_ sender: UIButton) {
        partnerGenderSelect.partnerGender = "female"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let finalVC = segue.destination as! FinalViewController
        finalVC.characterSelctions = self.partnerGenderSelect
    }
}
