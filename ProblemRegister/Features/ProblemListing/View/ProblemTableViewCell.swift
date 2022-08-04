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
    @IBOutlet weak var labelDetail: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    
    func configure(with problem: Problem) {
        labelName.text = problem.name
        labelData.text = problem.date
        labelAddress.text = problem.address
        labelDetail.text = problem.detail
    }
}
