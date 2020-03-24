//
//  RoomSelectionViewController.swift
//  Hotel Manzana
//
//  Created by Parker Rushton on 3/24/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit

protocol RoomSelectionDelegate {
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
