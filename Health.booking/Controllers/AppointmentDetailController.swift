//  AppointmentDetailController.swift
//  Health.booking
//
//  Created by Shak4l on 14/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class AppointmentDetailController: UIViewController {
    
    // - IBOutlets
    @IBOutlet weak var titleHolder: UILabel!
    @IBOutlet weak var statusHolder: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var hospitalNameLabel: UILabel!
    @IBOutlet weak var hospitalLocationLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var noteTextView: UITextView!
    
    // - Data
    var appointment: Appointment!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleHolder.text = appointment.doctorName
        statusHolder.text = appointment.doctorSpecialty
        noteTextView.text = appointment.note
        noteTextView.textContainerInset = .zero
        noteTextView.textContainer.lineFragmentPadding = 0
        hospitalNameLabel.text = appointment.hospitalName
        hospitalLocationLabel.text = appointment.hospitalLocation
        dateLabel.text = appointment.date
        timeLabel.text = appointment.time
    }
}

