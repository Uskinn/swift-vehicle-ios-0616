//
//  Vehicle.swift
//  swift-vehicle-lab
//
//  Created by Sergey Nevzorov on 7/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Vehicle {
    
    let name: String
    let weight: Double
    let maxSpeed: Double
    var speed: Double = 0.0
    var heading: Double = 0.0
    
    init(name: String, weight: Double, maxSpeed: Double) {
        
        self.name = name
        self.weight = weight
        self.maxSpeed = maxSpeed
    }
    
    func goFast() {
        self.speed = self.maxSpeed
    }
    
    func halt() {
        self.speed = 0.0
    }
    
    func accelerate() {
        
        let approximateSpeed = self.speed + (self.maxSpeed * 0.1)
        
        if approximateSpeed <= self.maxSpeed {
            self.speed = approximateSpeed
        }
    }
    
    func decelerate() {
        
        let approximateSpeed = self.speed - (self.maxSpeed * 0.1)
        
        if approximateSpeed >= 0 {
            self.speed = approximateSpeed
        }
    }
    
    func turnRight() {
        
        if self.speed > 0 {
            
            self.speed /= 2
            
            if self.heading == 360 {
                self.heading = 0
                self.speed += 90
            } else {
                self.heading += 90
            }
        }
    }
    
    func turnLeft() {
        
        if self.speed > 0 {
            
            self.speed /= 2
            
            if self.heading == 0 {
                self.heading = 360
                self.heading -= 90
            } else {
                self.heading -= 90
            }
        }
    }
}

















