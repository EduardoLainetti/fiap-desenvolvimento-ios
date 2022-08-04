//
//  ProblemVisualizationViewController.swift
//  ProblemRegister
//
//  Created by Eduardo Silva on 30/07/22.
//

import UIKit

class ProblemVisualizationViewController: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    @IBOutlet weak var labelAddress: UILabel!
    @IBOutlet weak var labelDetail: UILabel!
    
    var problem: Problem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? ProblemFormViewController
        vc?.problem = problem
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        labelName.text = problem.name
        labelDate.text = problem.date
        labelAddress.text = problem.address
        labelDetail.text = problem.detail
    }
}
