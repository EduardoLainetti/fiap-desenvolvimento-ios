//
//  ProblemFormViewController.swift
//  ProblemRegister
//
//  Created by Eduardo Silva on 30/07/22.
//

import UIKit

class ProblemFormViewController: UIViewController {
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldAddress: UITextField!
    @IBOutlet weak var textFieldDate: UITextField!
    @IBOutlet weak var textViewDetail: UITextView!
    @IBOutlet weak var buttonSave: UIButton!
    
    var problem: Problem?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let problem = problem {
            textFieldName.text = problem.name
            textFieldAddress.text = problem.address
            textFieldDate.text = problem.date
            textViewDetail.text = problem.detail
            
            title = "Edição de Problema"
            buttonSave.setTitle("Atualizar", for: .normal)
        }
    }
    
    @IBAction func save(_ sender: UIButton) {
        
        if problem == nil {
            problem = Problem(context: context)
        }
        
        problem?.name = textFieldName.text
        problem?.address = textFieldAddress.text
        problem?.date = textFieldDate.text
        problem?.detail = textViewDetail.text
        
        do {
            try context.save()
            navigationController?.popViewController(animated: true)
        } catch {
            print(error)
        }
    }
}
