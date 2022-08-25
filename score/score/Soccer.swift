//
//  Soccer.swift
//  score
//
//  Created by Illya Gurkov on 23.08.22.
//

import UIKit

struct soccer {
    let name: String
    let price: Double
    let image: UIImage?

    var feedbacks: [Feedback] = []

    var ratingBar: String {
        if let rating = rating {
            return String(repeating: "⭐️", count: Int(rating.rounded(.up)))
        } else {
            return "There are no reviews yet"
        }
    }

    private var rating: Double? {
        if feedbacks.isEmpty {
            return nil
        } else {
            var sum: Double = 0
            for rewiew in feedbacks {
                sum += rewiew.mark
            }
            return sum / Double(feedbacks.count)
        }
    }
}
