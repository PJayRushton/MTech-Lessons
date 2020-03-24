//
//  RoomSelectionDataSource.swift
//  Hotel Manzana
//
//  Created by Parker Rushton on 3/24/20.
//  Copyright © 2020 PJayRushton. All rights reserved.
//

import UIKit

class RoomSelectionDataSource: NSObject, UITableViewDataSource {
    
    let allRooms = RoomType.all
    
    var selectedRoom = RoomType.all.first!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allRooms.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let room = allRooms[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "RoomCell")!
        cell.textLabel?.text = room.name
        cell.detailTextLabel?.text = "$\(room.price)"
        cell.accessoryType = room == selectedRoom ? .checkmark : .none
        
        return cell
    }
    
    
}
