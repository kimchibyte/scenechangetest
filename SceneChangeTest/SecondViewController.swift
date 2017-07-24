//
//  SecondViewController.swift
//  SceneChangeTest
//
//  Created by Justin Lee on 7/21/17.
//  Copyright © 2017 Justin Lee. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textField: UILabel!
    
    var newText = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if (newText != "") {
            textField.text = newText
            UserDefaults.standard.set(newText, forKey: "oldText")
        } else if let x = UserDefaults.standard.object(forKey: "oldText") as? String {
            textField.text = x
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
