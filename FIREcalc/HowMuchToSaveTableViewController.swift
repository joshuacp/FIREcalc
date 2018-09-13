//
//  HowMuchToSaveTableViewController.swift
//  FIREcalc
//
//  Created by Joshua Patrick on 9/13/18.
//  Copyright © 2018 patrickstudiOS. All rights reserved.
//

import Foundation
import UIKit

class HowMuchToSaveTableViewController: UITableViewController {
    
    enum Section: Int {
        case CurrentValues = 0, Goals, Allocation, Returns
    }
    enum CurrentValuesRow: Int {
        case NetWorth = 0, Salary, Expenses, SavingsRate, SalaryGrowth
    }
    enum GoalsRow: Int {
        case FireTarget = 0, WithdrawalRate
    }
    enum AllocationRow: Int {
        case Stocks = 0, Bonds, Cash
    }
    enum ReturnsRow: Int {
        case Stocks = 0, Bonds
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case Section.CurrentValues.rawValue:
            return 5
        case Section.Goals.rawValue:
            return 2
        case Section.Allocation.rawValue:
            return 3
        case Section.Returns.rawValue:
            return 2
        default:
            return 0
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case Section.CurrentValues.rawValue:
            return GetCurrentValuesRow(indexPath)
        case Section.Goals.rawValue:
            return GetGoalsRow(indexPath)
        case Section.Allocation.rawValue:
            return GetAllocationRow(indexPath)
        case Section.Returns.rawValue:
            return GetReturnsRow(indexPath)
        default:
            return UITableViewCell()
        }
    }
    
    func GetCurrentValuesRow(_ indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case CurrentValuesRow.NetWorth.rawValue:
            return UITableViewCell()
        case CurrentValuesRow.Salary.rawValue:
            return UITableViewCell()
        case CurrentValuesRow.Expenses.rawValue:
            return UITableViewCell()
        case CurrentValuesRow.SavingsRate.rawValue:
            return UITableViewCell()
        case CurrentValuesRow.SalaryGrowth.rawValue:
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
    
    func GetGoalsRow(_ indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case GoalsRow.FireTarget.rawValue:
            return UITableViewCell()
        case GoalsRow.WithdrawalRate.rawValue:
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
    
    func GetAllocationRow(_ indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case AllocationRow.Stocks.rawValue:
            return UITableViewCell()
        case AllocationRow.Bonds.rawValue:
            return UITableViewCell()
        case AllocationRow.Cash.rawValue:
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
    
    func GetReturnsRow(_ indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case ReturnsRow.Stocks.rawValue:
            return UITableViewCell()
        case ReturnsRow.Bonds.rawValue:
            return UITableViewCell()
        default:
            return UITableViewCell()
        }
    }
}
