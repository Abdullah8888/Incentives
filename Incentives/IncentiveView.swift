//
//  IncentiveView.swift
//  Incentives
//
//  Created by Abdullah on 07/03/2023.
//

import Foundation
import UIKit

class IncentiveView: BaseView {
    
    let topView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hex: "FF2D2D").withAlphaComponent(0.03)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let alertImage: UIImageView = {
        let image = UIImageView(image: UIImage(systemName: "pencil.circle"))
        image.tintColor = .red
        return image
    }()
    
    let headerLabel: UILabel = {
        let label = UILabel.init(frame: .zero)
        label.text = "NB: if you complete at least 80% daily, you will be paid the said amount for that day."
        label.numberOfLines = 0
        label.textColor = UIColor(hex: "FF2D2D")
        let mutableString = NSMutableAttributedString(string: label.text!)
        let range = (label.text! as NSString).range(of: "NB:")
        mutableString.addAttribute(.font, value: UIFont.systemFont(ofSize: 14, weight: .bold), range: range)
        label.attributedText = mutableString
        return label
    }()
    
    override func setup() {
        super.setup()
        addSubview(topView)
        topView.anchor(top: safeAreaLayoutGuide.topAnchor, leading: leadingAnchor, trailing: trailingAnchor, margin: .init(top: 50, left: 20, bottom: 0, right: 20), size: .init(width: 0, height: 80))
        
        topView.addSubviews(alertImage, headerLabel)
        alertImage.anchor(top: topView.topAnchor, leading: topView.leadingAnchor, margin: .init(top: 5, left: 10, bottom: 0, right: 0), size: .init(width: 23, height: 23))
        
        headerLabel.anchor(top: alertImage.topAnchor, leading: alertImage.trailingAnchor, trailing: topView.trailingAnchor, margin: .init(top: 0, left: 15, bottom: 0, right: 10))
    }
}
