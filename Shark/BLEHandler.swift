//
//  BLEHandler.swift
//  Shark
//
//  Created by Kinshuk Juneja on 9/5/16.
//  Copyright © 2016 App1x. All rights reserved.
//

import Foundation
import CoreBluetooth

class BLEHandler : NSObject, CBCentralManagerDelegate {
    override init() {
        super.init()
    }
    
    func centralManagerDidUpdateState ( _ central: CBCentralManager) {
        switch(central.state) {
        case.unsupported : print("BLE is unsupported")
        case.unauthorized : print("BLE is unauthorized")
        case.unknown : print("BLE is unknown")
        case.resetting : print("BLE is resetting")
        case.poweredOff : print("BLE is powered off")
        case.poweredOn :
            print("BLE is powered on")
            print("Start Scanning")
            central.scanForPeripherals(withServices: nil, options: nil)
            
//        default: print("BLE Default")
        }
    }
    
//    func centralManager(central: CentralManager!,
//                        didDiscoverPeripheral peripheral: CBPeripheral!, advertisementData advertisementData: [String : AnyObject], RSSI: NSNumber!) {
//        print("\(peripheral.name) : \(RSSI) dBm")
//    }
    
    func centralManager(_ central: CBCentralManager,
                        didDiscover peripheral: CBPeripheral,                                                          advertisementData: [String : Any],
                                              rssi RSSI: NSNumber) {
        print("\(peripheral.name) : \(RSSI) dBm")
    }

}
