//
//  ViewController.swift
//  Multiple ex
//
//  Created by Kashfa Talukdar on 14/01/2016.
//  Copyright © 2016 Kashfa Talukdar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    var num = 0
    var currentMultiple = 0
    var times = 0
    
    
    //Outlets
    
    @IBOutlet weak var multipleImg: UIImageView!
   
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var askerTxt: UITextField!
    
    @IBOutlet weak var pressLabel: UILabel!
    
    @IBOutlet weak var addBtn: UIButton!
  
   //Actions
    
    @IBAction func whenPlay(sender: UIButton!) {
    
    if askerTxt.text != nil && askerTxt.text != "" {
        num = Int(askerTxt.text!)!
        changeHiding()
        
        currentMultiple = num
        pressLabel.text = "0 + \(num) = \(currentMultiple)"
        times = 0
    }
    }
    
    @IBAction func addPressed(sender: UIButton!) {
        
        if times < 10 {
            let oldMultiple = currentMultiple
            currentMultiple = currentMultiple + num
        pressLabel.text = "\(oldMultiple) + \(num)= \(currentMultiple)"
            times++
            
            NSLog("\(times)")
        }else {
            changeHiding()
            askerTxt.text = ""
        }
        
    }
    
    
    func changeHiding()
    {
        multipleImg.hidden = !multipleImg.hidden
        playBtn.hidden = !playBtn.hidden
        askerTxt.hidden = !askerTxt.hidden
        
        pressLabel.hidden = !pressLabel.hidden
        addBtn.hidden = !addBtn.hidden
        
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

