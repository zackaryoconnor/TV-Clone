//
//  Extensions.swift
//  TV Clone
//
//  Created by Zackary O'Connor on 6/27/19.
//  Copyright © 2019 Zackary O'Connor. All rights reserved.
//

import UIKit

extension UIImageView {
    func loadImageUsingUrlString(urlstring: String) {
        let url = URL(string: urlstring)
        URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print(error as Any)
                return
            }
            
            DispatchQueue.main.async {
                self.image = UIImage(data: data!)
            }
            }.resume()
    }
}


extension UILabel {
    convenience init(text: String, textAlignment: NSTextAlignment, textColor: UIColor = .white, font: UIFont, numberOfLines: Int = 1) {
        self.init(frame: .zero)
        self.text = text
        self.textAlignment = textAlignment
        self.textColor = textColor
        self.font = font
        self.numberOfLines = numberOfLines
    }
}


extension UIImageView {
    convenience init(cornerRadius: CGFloat) {
        self.init(image: nil)
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
    }
}

extension UIButton {
    convenience init(title: String) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
    }
}

extension UIStackView {
    convenience init(arrangedSubviews: [UIView], customSpacing: CGFloat = 0) {
        self.init(arrangedSubviews: arrangedSubviews)
        self.spacing = customSpacing
    }
}

