//
//  BLEManager.swift
//  Shark
//
//  Created by Kinshuk Juneja on 9/5/16.
//  Copyright © 2016 App1x. All rights reserved.
//

import Foundation
import CoreBluetooth

class BLEManager {
    var centralManager : CBCentralManager!
    var bleHandler : BLEHandler
    init() {
        self.bleHandler = BLEHandler()
        self.centralManager = CBCentralManager(delegate: self.bleHandler, queue: nil)
    }
    
    
}
