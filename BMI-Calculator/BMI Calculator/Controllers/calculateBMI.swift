//
//  custommVCViewController.swift
//  BMI Calculator
//
//  Created by Pushparaj Selvam on 05/12/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

// Custom class for custom vc to display the result of BMI
class calculateBMI: UIViewController {
    var bmi:Float?
    @IBOutlet weak var bmilabel:UILabel!
    @IBOutlet weak var remark: UILabel!
    @IBOutlet weak var advicelabel:UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        advicelabel.text = String(bmi!)
        // setting recommend
        if bmi! <= 50{
            remark.text = "Recommend to some more food"
        }
        else if(bmi! > 50 && bmi! < 65){
            remark.text = "Reduce junk foods"
        }
        else{
            remark.text = "Request to maintain diet !"
        }
    }
    @IBAction func pressed(_ sender: UIButton){
        self.dismiss(animated: true, completion: nil)
    }
}
