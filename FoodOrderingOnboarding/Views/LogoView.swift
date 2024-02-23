//  /*
//
//  Project: FoodOrderingOnboarding
//  File: LogoView.swift
//  Created by: Elaidzha Shchukin
//  Date: 23.02.2024
//
//  */

import UIKit
import SnapKit

class LogoView: UIView {
    
    //MARK: Init
    init() {
        super.init(frame: .zero)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Private properties
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "burger - 2")
        return view
    }()
    
    //MARK: Private constant
    private enum UIConstants {
        static let logoWidth: CGFloat = 375
        static let logoHeight: CGFloat = 320
    }
}

//MARK: Private methods
private extension LogoView {
    func initialize() {
        addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
            make.width.equalTo(UIConstants.logoWidth)
            make.height.equalTo(UIConstants.logoHeight)
        }
    }
}
