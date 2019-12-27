//
//  ViewController.swift
//  UIRVI
//
//  Created by COE-006 on 27/12/19.
//  Copyright © 2019 COE-006. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    var data = [[String:Any]]()
    var EditData = [String:Any]()
    
    var dbObj:DBManager?
    
    
    @IBOutlet weak var NAME: UITextField!
    
    @IBAction func BTN(_ sender: Any) {var cmd = ""
        if(EditData.keys.count == 0)
        {
            // to insert
            
            cmd = "insert into POONAM(NAME, CLASS) values(\"\(NAME.text!)\",\"\(CLASS.text!)\")"
            
        }
        else{
            //to update
            cmd = "update POONAM set NAME = '\(CLASS.text!)' where Id = \(NAME.text!)"
            
            NAME.text = ""
            CLASS.text = ""
            
            
            EditData = [String:Any]()
        }
        
        if ((dbObj?.Execute(SQLCommnad: cmd))!)
        {
            print("Inserted")
        }
        else{
            print("Not Inserted")
        }
        
        
        
        
        
        
        
        
        
    }
    @IBOutlet weak var CLASS: UITextField!
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        
        dbObj = DBManager()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnn(_ sender: UIButton) {
        
        
        
        
        let LoginPage = self.storyboard?.instantiateViewController(withIdentifier: "JIMMY5")
        self.navigationController?.pushViewController(LoginPage!, animated: true)
    }
    
    
    
    
    
    }


