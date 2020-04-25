//
//  RoomSelectionViewController.swift
//  Hotel Manzana
//
//  Created by Parker Rushton on 3/24/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit

protocol RoomSelectionDelegate {
    /// Used in the `RoomSelectionDelegate` when a room is selected
    /// - note: This is an extra note to be read by the next programmer on this project.
    /// - Parameter room: `RoomType` of the selected room
    func didSelectRoom(_ room: RoomType)
}


class RoomSelectionViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var dataSource: RoomSelectionDataSource!
 
    var delegate: RoomSelectionDelegate?
    
}


extension RoomSelectionViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRoom = dataSource.allRooms[indexPath.row]
        dataSource.selectedRoom = selectedRoom
        delegate?.didSelectRoom(selectedRoom)
        tableView.reloadData()
    }
    
}
