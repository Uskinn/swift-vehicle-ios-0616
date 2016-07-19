//
//  RaceCar.swift
//  swift-vehicle-lab
//
//  Created by Sergey Nevzorov on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class RaceCar: Car {
    
    let driver: String
    var sponsors: [String]
    
    init(name: String, weight: Double, maxSpeed: Double, transmission: String, cylinders: Int, milesPerGallon: Double, driver: String, sponsors: [String]) {
        
        self.driver = driver
        self.sponsors = sponsors
        
        super.init(name: name, weight: weight, maxSpeed: maxSpeed, transmission: transmission, cylinders: cylinders, milesPerGallon: milesPerGallon)
    }
    
    override func accelerate() {
        
        let approximateSpeed = self.speed + (self.maxSpeed * 0.2)
        
        if approximateSpeed <= self.maxSpeed {
            self.speed = approximateSpeed
        }
    }
    
    override func decelerate() {
        
        let approximateSpeed = self.speed - (self.maxSpeed * 0.2)
        
        if approximateSpeed >= 0 {
            self.speed = approximateSpeed
        }
    }
    
    func driftRight() {
        
        if self.speed > 0 {
            
            if self.heading == 360 {
                
                self.heading = 0
            }
            
            self.heading += 90
            self.speed -= (self.speed * 0.25)
        }
    }
    
    func driftLeft() {
        
        if self.speed > 0 {
            
            if self.heading == 0 {
                self.heading = 360 - 90 
            } else {
                self.heading -= 90
            }
            self.speed -= (self.speed * 0.25)
            
        }
    }
    
}



































