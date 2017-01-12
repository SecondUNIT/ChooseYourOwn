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
   
    @IBOutlet weak var partnerSelectText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        partnerSelectText.text = "Alright then \(partnerGenderSelect.playerName), let's pick your partner's gender too!"
    }

    @IBAction func malePartnerSelect(_ sender: UIButton) {
        partnerGenderSelect.partnerGender = "male"
    }
    @IBAction func femalePartnerSelect(_ sender: UIButton) {
        partnerGenderSelect.partnerGender = "female"
    }
    
    @IBAction func questionableButton(_ sender: UIButton) {
        let alert = UIAlertController(title: "Escuuuse me?", message: "Yes, you do, because I still dont know what i'm doing and can't code a randomizer.", preferredStyle: UIAlertControllerStyle.alert)
        let dismiss = UIAlertAction(title: "Oh, alright.", style: .default, handler: nil)
        
        alert.addAction(dismiss)
        present(alert, animated: true, completion: nil)
        }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let finalVC = segue.destination as! FinalViewController
        finalVC.characterSelctions = self.partnerGenderSelect
    }
}
