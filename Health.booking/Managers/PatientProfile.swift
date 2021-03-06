//  PatientProfile.swift
//  Health.booking
//
//  Created by Shak4l on 13/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation

class PatientProfile {
    
    var data: Patient?
    var healthInfo: HealthInfo?
    var key: String?
    
    static let current = PatientProfile()
    private init() { }
    
    
    func deintegrate() {
        self.data = nil
        self.healthInfo = nil
        self.key = nil
    }
}
