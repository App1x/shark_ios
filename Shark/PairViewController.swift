//
//  PairViewController.swift
//  Shark
//
//  Created by Kinshuk Juneja on 8/31/16.
//  Copyright © 2016 App1x. All rights reserved.
//

import UIKit

class PairViewController: UIViewController {
    
    var bleManager: BLEManager!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        bleManager = BLEManager()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pairUser(_ sender: UIButton) {
        //Have a sportify popover
        //Create a user instance and Populate that user instance with spotify info
        //For neaby users get nearbyUsers by calling da method
        
//        findNearByUsers
        
        
        //start scanning for devices when the app loads for
        //either up to 3 minutes
        //or until the user taps on the pair button
    }

}

