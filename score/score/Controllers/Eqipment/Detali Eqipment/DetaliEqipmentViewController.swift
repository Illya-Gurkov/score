//
//  DetaliEqipmentViewController.swift
//  score
//
//  Created by Illya Gurkov on 23.08.22.
//

import UIKit

class DetaliEqipmentViewController: UIViewController {
    var index: Int!
    
    var equipmen: soccer {
        DataService.shared.equipment[index]
    }
    
    @IBOutlet var eqipmentStack: UIStackView!
    
    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet var nameLBL: UILabel!
    
    @IBOutlet var priceLBL: UILabel!

    @IBOutlet var ratingLBL: UILabel!

    @IBOutlet var showRevBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: view.bounds.size)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(with: size)
    }

    func updateUI(with size: CGSize) {
        let isVertical = size.width < size.height
        eqipmentStack.axis = isVertical ?.vertical : .horizontal
        title = equipmen.name
        imageView.image = equipmen.image
        nameLBL.text = equipmen.name
        priceLBL.text = String(equipmen.price) + "BYN"

        ratingLBL.text = equipmen.ratingBar
        
        let showReviewsBtnTitle = "Просмотреть (\(equipmen.feedbacks.count)) отзывов"
        showRevBtn.setTitle(showReviewsBtnTitle, for: .normal)
        showRevBtn.isEnabled = equipmen.feedbacks.count != 0
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dest = segue.destination as? FeedbackVC {
            dest.index = index
        }
        if let dest = segue.destination as? ReviewsTableVC {
            dest.index = index
        }
    }
}
