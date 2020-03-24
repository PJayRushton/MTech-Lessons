//
//  ViewController.swift
//  Hotel Manzana
//
//  Created by Parker Rushton on 3/24/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit

class NewRegistrationTableViewController: UITableViewController {

    // MARK: - Enums
    
    enum TableSection: Int, CaseIterable {
        case nameEmail
        case checkInOutDates
        case occupancy
        case wifi
        case roomType
        
        var rows: [TableRow] {
            switch self {
            case .nameEmail:
                return [.firstName, .lastName, .email]
            case .checkInOutDates:
                return [.checkIn, .checkInPicker, .checkOut, .checkOutPicker]
            case .occupancy:
                return [.adultCounter, .childCounter]
            case .wifi:
                return [.wifi]
            case .roomType:
                return [.roomType]
            }
        }
    }
    
    enum TableRow {
        case firstName
        case lastName
        case email
        case checkIn
        case checkInPicker
        case checkOut
        case checkOutPicker
        case adultCounter
        case childCounter
        case wifi
        case roomType
    }
    
    static var dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }()
    
    
    // MARK: - Outlets
    
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var checkInDatePicker: UIDatePicker!
    @IBOutlet weak var checkOutDatePicker: UIDatePicker!
    
    @IBOutlet weak var checkInLabel: UILabel!
    @IBOutlet weak var checkOutLabel: UILabel!
    
    @IBOutlet weak var numberOfAdultsLabel: UILabel!
    @IBOutlet weak var numberOfChildrenLabel: UILabel!
    
    @IBOutlet weak var adultsStepper: UIStepper!
    @IBOutlet weak var childrenStepper: UIStepper!
    
    @IBOutlet weak var roomTypeLabel: UILabel!
    
    
    // MARK: - Properties
    
    var registration = Registration(firstName: "", lastName: "", emailAddress: "", checkInDate: Date(), checkOutDate: Date(), numberOfAdults: 0, numberOfChildren: 0, roomType: RoomType.all.first!, wifi: false) {
        didSet {
            updateUI()
        }
    }
    var isCheckInPickerShowing = false {
        didSet {
            if isCheckInPickerShowing {
                isCheckOutPickerShowing = false
            }
        }
    }
    var isCheckOutPickerShowing = false {
        didSet {
            if isCheckOutPickerShowing {
                isCheckInPickerShowing = false
            }
        }
    }
    
    
    // MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    
    // MARK: - Actions
    
    @IBAction func emailFieldChanged(_ sender: UITextField) {
        registration.emailAddress = sender.text!
    }
    
    @IBAction func checkInDateChanged(_ sender: UIDatePicker) {
        registration.checkInDate = sender.date
    }
    
    @IBAction func checkOutDateChanged(_ sender: UIDatePicker) {
        registration.checkOutDate = sender.date
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        guard let intValue = Int(exactly: sender.value) else { return }
        
        if sender == adultsStepper {
            registration.numberOfAdults = intValue
        } else {
            registration.numberOfChildren = intValue
        }
    }
    
    @IBAction func wifiSwitchChanged(_ sender: UISwitch) {
        registration.wifi = sender.isOn
    }
    
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let roomSelectionViewController = segue.destination as? RoomSelectionViewController else { return }
        roomSelectionViewController.delegate = self
        roomSelectionViewController.dataSource.selectedRoom = registration.roomType
    }
    
}


// MARK: - Private

private extension NewRegistrationTableViewController {
    
    func tableRow(for indexPath: IndexPath) -> TableRow {
        let section = TableSection.allCases[indexPath.section]
        let rows = section.rows
        return rows[indexPath.row]
    }
    
    func animateCellHeightChange() {
        tableView.beginUpdates()
        tableView.endUpdates()
    }
    
    func updateUI() {
        updateDateLabels()
        updateOccupancyLabels()
        updateRoomTypeLabel()
    }

    func updateDateLabels() {
        checkInLabel.text = NewRegistrationTableViewController.dateFormatter.string(from: registration.checkInDate)
        checkOutLabel.text = NewRegistrationTableViewController.dateFormatter.string(from: registration.checkOutDate)
    }
    
    func updateOccupancyLabels() {
        numberOfAdultsLabel.text = String(registration.numberOfAdults)
        numberOfChildrenLabel.text = String(registration.numberOfChildren)
    }
    
    func updateRoomTypeLabel() {
        roomTypeLabel.text = registration.roomType.name
    }
    
}


// MARK: - UITableViewDelegate

extension NewRegistrationTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let selectedRow = tableRow(for: indexPath)
        switch selectedRow {
        case .checkInPicker:
            return isCheckInPickerShowing ? 216 : 0
        case .checkOutPicker:
            return isCheckOutPickerShowing ? 216 : 0
        default:
            return 44
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = tableRow(for: indexPath)
        switch selectedRow {
        case .checkIn:
            isCheckInPickerShowing.toggle()
            animateCellHeightChange()
        case .checkOut:
            isCheckOutPickerShowing.toggle()
            animateCellHeightChange()
        default:
            return
        }
    }

}


// MARK: - UITextfieldDelegate

extension NewRegistrationTableViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newText = textField.text else { return }
        
        if textField == firstNameTextField {
            registration.firstName = newText
        } else if textField == lastNameTextField {
            registration.lastName = newText
        } else {
//            registration.emailAddress = newText
            // Registration email updated in `emailFieldChanged`
        }
    }
    
}


// MARK: - RoomSelectionDelegate {

extension NewRegistrationTableViewController: RoomSelectionDelegate {
    
    func didSelectRoom(_ room: RoomType) {
        registration.roomType = room
    }
    
}
