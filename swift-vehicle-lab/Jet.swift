//
//  Jet.swift
//  swift-vehicle-lab
//
//  Created by Sergey Nevzorov on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet: Plane {
    
    override func climb() {
        
        
        if (inFlight) {
            let potentialAltitude = altitude + (maxAltitude * 0.2)
            
            if (potentialAltitude <= maxAltitude) {
                altitude = potentialAltitude
                speed = (maxSpeed * 0.4)
            }
        }
        
    }
    
    override func dive() {
        
        if (inFlight) {
            let potentialAltitude = altitude - (maxAltitude * 0.2)
            
            if (potentialAltitude >= 0) {
                altitude = potentialAltitude
                speed = (maxSpeed * 0.6)
            }
        }
        
    }
    
    func afterburner() {
        
        if (inFlight == true) && (maxSpeed == speed) {
            
                speed = maxSpeed * 2
            
        }
        
    }
    
    
    
}