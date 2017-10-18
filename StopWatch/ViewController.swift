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
    
    @IBOutlet weak var clockLabel: UILabel!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    var initialValue = 0
    var counter = Timer()
    
    var timeCounter = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timeCounter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(self.updateTime)), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func start_Button_Tapped(_ sender: Any) {
        
        counter = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }
    func updateTime(){
        let timeFormat = DateFormatter()
        timeFormat.timeStyle = .medium
        
        let dateFormat = DateFormatter()
        dateFormat.dateStyle = .medium
        
        clockLabel.text = timeFormat.string(from: Date())
        dateLabel.text = dateFormat.string(from: Date())
        
        
    }
    func update(){
       initialValue += 1
        counterLabel.text = String(initialValue)
    }
    
    @IBAction func stopButtonTapped(_ sender: Any) {
        counter.invalidate()
        initialValue = 0
        counterLabel.text = String(initialValue)
        
    }
    

}

