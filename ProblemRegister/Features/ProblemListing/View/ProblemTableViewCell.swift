//
//  ProblemTableViewCell.swift
//  ProblemRegister
//
//  Created by Eduardo Silva on 30/07/22.
//

import UIKit

class ProblemTableViewCell: UITableViewCell {
    
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelData: UILabel!
    
    func configure(with problem: Problem) {
        labelName.text = problem.name
        labelData.text = problem.date
    }
}
