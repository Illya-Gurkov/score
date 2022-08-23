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
    
    
    @IBOutlet weak var eqipmentStack: UIStackView!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var nameLBL: UILabel!
    
    @IBOutlet weak var priceLBL: UILabel!

    @IBOutlet weak var ratingLBL: UILabel!

    @IBOutlet weak var showRevBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: view.bounds.size)
    }
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(with: size)
    }
    func updateUI(with size: CGSize){
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
    }

