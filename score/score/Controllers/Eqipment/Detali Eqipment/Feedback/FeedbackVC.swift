//
//  FeedbackVC.swift
//  score
//
//  Created by Illya Gurkov on 24.08.22.
//

import UIKit

class FeedbackVC: UIViewController {
    @IBOutlet var textView: UITextView!
    
    @IBOutlet var ratingSegment: UISegmentedControl!
    
    @IBOutlet var saveBtn: UIButton!
    
    @IBOutlet var errorLBL: UILabel!
    
    var index: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.delegate = self
    }
    
    @IBAction func saveFB() {
        let feedback = Feedback(text: textView.text, mark: Double(ratingSegment.selectedSegmentIndex + 1))
        DataService.shared.equipment[index].feedbacks.append(feedback)
    }
}

extension FeedbackVC: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if textView == textView {
            let isCountEnogh = textView.text.count > 20
            saveBtn.isEnabled = isCountEnogh
            errorLBL.isHidden = isCountEnogh
        }
        return true
    }
}
