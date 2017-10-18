//
//  ViewController.swift
//  StopWatch
//
//  Created by YILDIRAY HAZIR on 10/17/17.
//  Copyright © 2017 thunder. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var counterLabel: UILabel!
    
    var initialValue = 0
    var counter = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func start_Button_Tapped(_ sender: Any) {
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
    }
    

}

