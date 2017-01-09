//
//  GenderSelectViewController.swift
//  ChooseYourOwn
//
//  Created by student3 on 1/5/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class GenderSelectViewController: UIViewController {

    var characterGenderSelect = CharacterPresets()
    
    @IBOutlet weak var maleGenderSelect: UIButton!
    @IBOutlet weak var femaleGenderSelect: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let partnerVC = segue.destination as! PartnerGenderViewController
        //I dont know how to put the gender in here yet.... so IDK this is here for now.
        //i just want my code to workkkkk ;^;
    }
}
