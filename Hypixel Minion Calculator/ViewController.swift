//
//  ViewController.swift
//  Hypixel Minion Calculator
//
//  Created by Hiro on 4/10/20.
//  Copyright © 2020 Hiro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mpm: UILabel!
    @IBOutlet weak var mph: UILabel!
    
    @IBOutlet weak var mpd: UILabel!
    
    @IBOutlet weak var TPA: UITextField!
    @IBOutlet weak var Sell: UITextField!
    
    @IBOutlet weak var Count: UITextField!
    @IBOutlet weak var Fuel: UITextField!
    
    
    @IBOutlet weak var matsm: UILabel!
    @IBOutlet weak var matsh: UILabel!
    @IBOutlet weak var matsd: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func displayAlert(){
        let alert = UIAlertController(title: "Error", message: "Please enter all values.", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    @IBAction func onClick(_ sender: UIButton) {
        if TPA.text != ""{
            if Sell.text != ""{
                if Count.text != ""{
                    if Fuel.text != ""{
                        let timePS = Float(TPA.text!)
                        let sel = Float(Sell.text!)
                        let minions = Float(Count.text!)
                        let f =  Float(Fuel.text!)
                        let newTPS = timePS!/(1+f!)
                        let matsPM = (newTPS*2)/minions!
                        let actualMatsPM = 60/matsPM
                        let moneyPM = actualMatsPM * sel!
                        let moneyPH = moneyPM*60
                        let moneyPD = moneyPH*24
                        mpm.text = "Money/Per Minute: \(String(moneyPM))"
                        mph.text = "Money/Per Hour: \(String(moneyPH))"
                        mpd.text = "Money/Per Day: \(String(moneyPD))"
                        matsm.text = "Materials/Per Minute: \(String(actualMatsPM))"
                        matsh.text = "Materials/Per Hour: \(String(actualMatsPM*60))"
                        matsd.text = "Materials/Per Day: \(String(actualMatsPM*1440))"
                    }
                    else{
                        displayAlert()

                    }
                }
                else{
                    displayAlert()

                }
                
            }
            else{
                displayAlert()

            }
        }
        else{
            displayAlert()
        }
        

        
    }
    
}

