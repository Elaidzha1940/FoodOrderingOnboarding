//  /*
//
//  Project: FoodOrderingOnboarding
//  File: FeedViewController.swift
//  Created by: Elaidzha Shchukin
//  Date: 23.02.2024
//
//  */

import UIKit
import SnapKit

class FeedViewController: UIViewController {
    
    //MARK: View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        onBoarding()
    }
}

//MARK: Private methods
private extension FeedViewController{
    func onBoarding() {
        let darkMint = UIColor.systemMint.withAlphaComponent(0.7)
        view.backgroundColor = darkMint
        
        let logoView = LogoView()
        view.addSubview(logoView)
        logoView.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(5)
            make.top.equalToSuperview().inset(200)
        }
        
        let label = UILabel()
        label.text = "The best food, delivered right to your home."
        label.numberOfLines = 3
        label.font = UIFont.systemFont(ofSize: 40, weight: .semibold)
        label.textColor = .white
        label.textAlignment = .left
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(30)
            make.top.equalTo(logoView.snp.bottom).inset(-5)
        }
        
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor.black
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 25
        button.setTitle("Start Ordering", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        view.addSubview(button)
        button.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(350)
            maker.bottom.equalToSuperview().inset(110)
            maker.height.equalTo(60)
        }
        
        let button1 = UIButton(type: .system)
        button1.backgroundColor = UIColor.clear
        button1.setTitleColor(.white, for: .normal)
        button1.layer.cornerRadius = 25
        button1.setTitle("Sign Up", for: .normal)
        button1.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .semibold)
        view.addSubview(button1)
        button1.snp.makeConstraints { maker in
            maker.centerX.equalToSuperview()
            maker.width.equalTo(350)
            maker.bottom.equalToSuperview().inset(40)
            maker.height.equalTo(60)
        }
    }
}
