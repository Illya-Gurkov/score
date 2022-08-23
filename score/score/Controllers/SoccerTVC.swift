//
//  SoccerTVC.swift
//  score
//
//  Created by Illya Gurkov on 23.08.22.
//

import UIKit

class SoccerTVC: UITableViewController {

    
    
    var equipment:[soccer] {
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
            cell.textLabel?.text = equipments.name
            cell.detailTextLabel?.text = String(equipments.price) + "BYN\n"
            cell.imageView?.image = equipments.image
        
        return cell
    }
    


    // MARK: - Navigation

//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }


}

