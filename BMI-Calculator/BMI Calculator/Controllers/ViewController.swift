//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var height: UILabel!
    @IBOutlet weak var weight: UILabel!
    
    var bmiValue:Float?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    // Height slider IBAction
    @IBAction func heightSlider(_ sender: UISlider) {
        height.text = "\(sender.value) m"
    }
    //Weight slider IBAction
    @IBAction func weightSlider(_ sender: UISlider) {
        weight.text = "\(sender.value) Kg"
    }
    //Calculating the value of both the slider
    @IBAction func calculate(_ sender: UIButton) {
        
        let ht = heightSlider.value
        let wt = weightSlider.value
        let bmi = wt/pow(ht, 2)
        bmiValue = bmi
        // perform segue for the present modelly view controller with its identifier
        self.performSegue(withIdentifier: "result", sender: self)
    }
    // This will be used for handling for configuring segue view controllers before they load in screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Check which segue vc is need to configure by using identifier
        // segue.destination will return the which vc is mentioned in the performSegue
        if segue.identifier == "result"{
            let vc = segue.destination as? calculateBMI // downcasting to custom vc
            // Set the value to segue vc class
            vc?.bmi = bmiValue
        }
    }
}

