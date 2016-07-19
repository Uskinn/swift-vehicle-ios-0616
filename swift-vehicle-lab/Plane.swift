//
//  Plane.swift
//  swift-vehicle-lab
//
//  Created by Sergey Nevzorov on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Plane: Vehicle {
    
    let maxAltitude: Double
    var altitude: Double = 0
    var inFlight: Bool {
        
        return speed > 0 && self.altitude > 0
        
    }
    
    init(name: String, weight: Double, maxSpeed: Double, maxAltitude: Double) {
        
        self.maxAltitude = maxAltitude
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed)
    }
    
    func takeOff() {
        
        if self.inFlight == false {
            
            speed += (maxSpeed * 0.1)
            self.altitude += (self.maxAltitude * 0.1)
        }
    }
    
    func land() {
        
        speed = 0
        self.altitude = 0
    }
    
    func climb() {
        
        if inFlight == true {
            
            let approximateAltitude = self.altitude + (self.maxAltitude * 0.1)
            
            if (approximateAltitude <= self.maxAltitude) {
                self.altitude = approximateAltitude
                speed = (maxSpeed * 0.4)
            }
            
        }
    }
    
    func dive() {
        
        if speed >= 0 {
            
            let approximateAltitude = self.altitude - (self.maxAltitude * 0.1)
            
            if (approximateAltitude >= 0) {
                self.altitude = approximateAltitude
                
                if (speed == 0) {
                    speed += (maxSpeed * 0.1)
                }
                else {
                    speed = (maxSpeed * 0.6)
                }
            }
        }
    }
    
    func bankRight() {
        
        if inFlight == true {
            
            if heading == 360 {
                heading = 0
            }
            
            heading += 45
            speed -= (speed * 0.1)
        }
    }
    
    func bankLeft() {
        
        if inFlight == true {
            
            if heading == 0 {
                
                heading = 360 - 45
            } else {
                heading -= 45
            }
            speed -= (speed * 0.1)
        }
    }
}





























