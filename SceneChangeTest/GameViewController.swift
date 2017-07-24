//
//  GameViewController.swift
//  SceneChangeTest
//
//  Created by Justin Lee on 7/8/17.
//  Copyright © 2017 Justin Lee. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var textBox: UITextField!
    var submited = String()
    
    @IBAction func submitBtn(_ sender: Any) {
        submited = textBox.text!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondController = segue.destination as! SecondViewController
        if (submited != "") {
            secondController.newText = submited
        }
    }
    
    override func viewDidLoad() {
        let scene = GameScene(size: view.frame.size)
        let skView = view as! SKView
        skView.presentScene(scene)
    }
    
}
