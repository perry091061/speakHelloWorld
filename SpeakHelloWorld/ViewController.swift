//
//  ViewController.swift
//  SpeakHelloWorld
//
//  Created by Perry Davies on 19/02/2018.
//  Copyright © 2018 Perry Davies. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var textUtterance: UITextView!
    
    @IBAction func playUtterance(_ sender: UIButton) {
        Speak(pointer:self)
    }
    
    @IBAction func clearUtterance(_ sender: UIButton) {
        textUtterance.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

