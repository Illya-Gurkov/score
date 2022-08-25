//
//  SoccerTVC.swift
//  score
//
//  Created by Illya Gurkov on 23.08.22.
//

import UIKit

class SoccerTVC: UITableViewController {
    let cellManager = CellManager()
    
    var equipment: [soccer] {
        DataService.shared.equipment
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        let imageView = UIImageView(image: #imageLiteral(resourceName: "Unknown-7"))
        tableView.backgroundView = imageView
        imageView.alpha = 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        equipment.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "equipmentCell", for: indexPath)
        let equipments = equipment[indexPath.row]
        cellManager.configure(cell, with: equipments)
//            cell.textLabel?.text = equipments.name
//            cell.detailTextLabel?.text = String(equipments.price) + "BYN\n"
//            cell.imageView?.image = equipments.image
//
        return cell
    }
    
//     MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { guard segue.identifier == "ShowDetailEqipment" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
       
        let eqipmentVC = segue.destination as! DetaliEqipmentViewController
        eqipmentVC.index = indexPath.row
    }

    @IBAction func unwindToSoccerTVC(_ unwindSegue: UIStoryboardSegue) {
        tableView.reloadData()
    }
}
