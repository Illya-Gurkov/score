//
//  ReviewsTableVC.swift
//  score
//
//  Created by Illya Gurkov on 24.08.22.
//

import UIKit

class ReviewsTableVC: UITableViewController {
    var index: Int!

    var soccer: soccer {
        DataService.shared.equipment[index]
    }

    override func viewDidLoad() {
        tableView.register(UINib(nibName: "ReviewTableViewCell", bundle: nil),
                           forCellReuseIdentifier: "ReviewTableViewCell")

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        soccer.feedbacks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let feedback = soccer.feedbacks[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: "ReviewTableViewCell", for: indexPath) as! ReviewTableViewCell
        cell.nameLbl.text = feedback.dateString
        cell.textLbl.text = feedback.text
        cell.ratingLbl.text = feedback.ratingBar
        return cell
    }
}
