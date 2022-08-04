//
//  UIViewController+Context.swift
//  ProblemRegister
//
//  Created by Eduardo Silva on 30/07/22.
//

import Foundation
import UIKit
import CoreData

extension UIViewController {
    var context: NSManagedObjectContext {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
}
