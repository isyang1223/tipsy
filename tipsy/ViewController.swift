//
//  ViewController.swift
//  tipsy
//
//  Created by Ian Yang on 3/9/18.
//  Copyright © 2018 Ian Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var lowper: UILabel!
    @IBOutlet weak var midper: UILabel!
    @IBOutlet weak var highper: UILabel!
    
    @IBOutlet weak var lowrate: UILabel!
    @IBOutlet weak var midrate: UILabel!
    @IBOutlet weak var highrate: UILabel!
    
    @IBOutlet weak var lowtotal: UILabel!
    @IBOutlet weak var midtotal: UILabel!
    @IBOutlet weak var hightotal: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    var total = ""
    var counter = 0
 

    
    @IBAction func clrbtn(_ sender: UIButton) {
        total = ""
        totalLabel.text = "0"
        counter = 0
        update()
        lowper.text = "5%"
        midper.text = "10%"
        highper.text = "15%"
        lowrate.text = "0.00"
        midrate.text = "0.00"
        highrate.text = "0.00"
        lowtotal.text = "0.00"
        midtotal.text = "0.00"
        hightotal.text = "0.00"
        
        
    }
    
    @IBAction func btn0pressed(_ sender: UIButton) {
        if total != ""{
            total += "0"
            totalLabel.text = total
            update()
            }
    }
    
    @IBAction func btn1pressed(_ sender: UIButton) {
        total += "1"
        totalLabel.text = total
        update()
    }
    
    
    @IBAction func btn2pressed(_ sender: UIButton) {
        total += "2"
        totalLabel.text = total
        update()
    }
    
    @IBAction func btn3pressed(_ sender: UIButton) {
        total += "3"
        totalLabel.text = total
        update()
    }
    
    @IBAction func btn4pressed(_ sender: UIButton) {
        total += "4"
        totalLabel.text = total
        update()
    }
    @IBAction func btn5pressed(_ sender: UIButton) {
        total += "5"
        totalLabel.text = total
        update()
    }
    @IBAction func btn6pressed(_ sender: UIButton) {
        total += "6"
        totalLabel.text = total
        update()
    }
    
    @IBAction func btn7pressed(_ sender: UIButton) {
        total += "7"
        totalLabel.text = total
        update()
    }
    @IBAction func btn8pressed(_ sender: UIButton) {
        total += "8"
        totalLabel.text = total
        update()
    }
    
    @IBAction func btn9pressed(_ sender: UIButton) {
        total += "9"
        totalLabel.text = total
        update()
    }
    @IBAction func btnperiodpressed(_ sender: UIButton) {
        if counter == 0 {
        total += "."
        totalLabel.text = total
            counter += 1
            update()
        }


    }
    var vs = 5
    var bs = 1
    
    @IBAction func tipsliderslided(_ sender: UISlider) {
        let val: Int = Int(sender.value)
        vs = val
        update()
    }
    
    @IBOutlet weak var groupLabel: UILabel!
    @IBAction func groupsliderslided(_ sender: UISlider) {
        let divisor: Int = Int(sender.value)
        bs = divisor
        groupLabel.text = "Group size: " + String(divisor)
        update()
        
    }
    
    func update(){
        let lper = vs
        let mper = vs + 5
        let hper = vs + 10
        let input: Double? = Double(total)
        lowper.text = String(lper) + "%"
        midper.text = String(mper) + "%"
        highper.text = String(hper) + "%"
        if let unwrappedinput = input {
            lowrate.text = String(format: "%.2f", unwrappedinput * (Double(lper) / 100) / Double(bs))
            midrate.text = String(format: "%.2f", unwrappedinput * (Double(mper) / 100) / Double(bs))
            highrate.text = String(format: "%.2f", unwrappedinput * (Double(hper) / 100) / Double(bs))
            lowtotal.text = String(format: "%.2f", ((unwrappedinput * (Double(lper) / 100)) + unwrappedinput) / Double(bs))
            midtotal.text = String(format: "%.2f", ((unwrappedinput * (Double(mper) / 100)) + unwrappedinput) / Double(bs))
            hightotal.text = String(format: "%.2f", ((unwrappedinput * (Double(hper) / 100)) + unwrappedinput) / Double(bs))
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

