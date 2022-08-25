//
//  CellManager.swift
//  score
//
//  Created by Illya Gurkov on 24.08.22.
//

import UIKit

class CellManager {
    func configure(_ cell: UITableViewCell, with soccer: soccer){
        cell.detailTextLabel?.text = String(soccer.price) + "BYN\n" + soccer.ratingBar
        cell.textLabel?.text = soccer.name
        cell.imageView?.image = soccer.image
    }
}
