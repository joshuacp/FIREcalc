//
//  ViewController.swift
//  FIREcalc
//
//  Created by Joshua Patrick on 8/14/18.
//  Copyright © 2018 patrickstudiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var CurrentNetworthTextField: UITextField!
    @IBOutlet var SalaryTextField: UITextField!
    @IBOutlet var ExpensesTextField: UITextField!
    @IBOutlet var ExpensesButton: UIButton!
    @IBOutlet var ChangeableTextField: UITextField!
    @IBOutlet var CalculateButton: UIButton!
    
    var isYearly: Bool = true
    var isSavingsRateSelected: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        SetupNavigationTitle()
//        self.navigationItem.titleView = customWidget
        // Do any additional setup after loading the view, typically from a nib.
    }
    
//    func SetupNavigationTitle() -> Void {
//        let button = UIButton(type: UIButtonType.system)
//        button.setTitle("Hello", for: UIControlState.normal)
//        button.addTarget(self, action: #selector(self.TitlePressed), for: .touchUpInside)
//        self.navigationItem.titleView = button
//    }
//
//    @objc func TitlePressed(sender: UIButton) -> Void {
//        let controller = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "CalculatorTypeTableViewController")
//        let navController = UINavigationController(rootViewController: controller)
//        navController.modalPresentationStyle = .popover
//        navController.popoverPresentationController?.sourceView = sender
//        navController.popoverPresentationController?.sourceRect = sender.frame
//
//        self.present(navController, animated: true, completion: nil)
////        var navController = new UINavigationController(controller);
////        navController.ModalPresentationStyle = UIModalPresentationStyle.Popover;
////        navController.View.Bounds = new CGRect(new CGPoint(), controller.PopoverContentSize);
////        navController.PopoverPresentationController.SourceView = _selectedSketchLabel;
////        navController.PopoverPresentationController.SourceRect = _selectedSketchLabel.Frame;
////
////        ThemeUtil.SetBackgroundColor(Theme.PopOverBackgroundColor, navController.PopoverPresentationController);
////        PresentViewController(navController, true, null);
//        print("")
//    }
    
    @IBAction func RetirementOptionSegmentedControlChanged(_ sender: UISegmentedControl) {
        isSavingsRateSelected = !isSavingsRateSelected
        if(sender.selectedSegmentIndex == 0) {
            ChangeableTextField.placeholder = "Savings rate"
        } else {
            ChangeableTextField.placeholder = "Years until retirement"
        }
    }
    
    @IBAction func ExpensesButtonPressed(_ sender: Any) {
        isYearly = !isYearly
        let title = isYearly ? "Yearly" : "Monthly"
        ExpensesButton.setTitle(title, for: UIControlState.normal)
        ExpensesTextField.placeholder = title + " Expenses"
    }
    
    @IBAction func CalculateButtonPressed(_ sender: Any) {
        guard let currentNetworth = Int(CurrentNetworthTextField.text!) else {
            return
        }
        guard let salary = Int(SalaryTextField.text!) else {
            return
        }
        guard var expenses = Int(ExpensesTextField.text!) else {
            return
        }
        
        if(!isYearly) {
            expenses *= 12
        }
        let income = salary - expenses
        let interestRate = 1.07
        var netWorth = Double(currentNetworth)
        
        for i in 1...20 {
            netWorth = (Double)(netWorth * interestRate) + (Double)(income * i)
            print(netWorth)
        }
    }
    
}

