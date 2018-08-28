//
//  CalculatorTypeTableViewController.swift
//  FIREcalc
//
//  Created by Joshua Patrick on 8/14/18.
//  Copyright © 2018 patrickstudiOS. All rights reserved.
//

import Foundation
import UIKit

class CalculatorTypeTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var TableView: UITableView!
    @IBOutlet var BackGroundView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        TableView.delegate = self
        TableView.dataSource = self
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.handleBackgroundTapped(_:)))
        BackGroundView.addGestureRecognizer(tapGesture)
        
        TableView.layer.cornerRadius = 8.0
        TableView.clipsToBounds = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if(indexPath.row == 0)
        {
            cell.textLabel?.text = "When can I retire?"
        }
        else if(indexPath.row == 1)
        {
            cell.textLabel?.text = "How much do I need to save?"
        }
        else if(indexPath.row == 2)
        {
            cell.textLabel?.text = "Calculate 20 years"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Calculator Types"
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row == 0)
        {
            let controller = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "WhenToRetireNavController")
            present(controller, animated: false, completion: nil)
        }
        else if(indexPath.row == 1)
        {
            let controller = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "HowMuchToRetireNavController")
            present(controller, animated: false, completion: nil)
        }
        else if(indexPath.row == 2)
        {
            let controller = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "20YearsNavController")
            present(controller, animated: false, completion: nil)
        }
    }
    
    @objc func handleBackgroundTapped(_ sender: UITapGestureRecognizer) {
        dismiss(animated: false, completion: nil)
    }
}
