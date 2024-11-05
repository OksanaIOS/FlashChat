//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit



class WelcomeViewController: UIViewController {
    //MARK: - UI
    private lazy var titleLabel: UILabel  = {
        let element = UILabel()
        element.textColor = UIColor(named: K.BrandColors.blue)
        element.font = .systemFont(ofSize: 50, weight:  .black)
        element.text = K.appName
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    private lazy var registerButton: UIButton  = {
        let element = UIButton()
        element.titleLabel?.font = .systemFont(ofSize: 30)
        element.setTitleColor(UIColor(named: K.BrandColors.blue), for: .normal)
        element.backgroundColor = UIColor(named: K.BrandColors.lighBlue)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()

    private lazy var logInButton: UIButton  = {
        let element = UIButton()
        element.titleLabel?.font = .systemFont(ofSize: 30)
        element.setTitleColor(UIColor(named: K.BrandColors.blue), for: .normal)
        element.backgroundColor = UIColor(named: K.BrandColors.lighBlue)
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setupConstraints()

       
    }
    
    //MARK: - Set Views
    private func setViews() {
        view.addSubview(titleLabel)
        view.addSubview(registerButton)
        view.addSubview(logInButton)
        registerButton.setTitle(K.registerSegue, for: .normal)
        logInButton.setTitle(K.loginSegue, for: .normal)
    }
}


//MARK: - Extensions

extension WelcomeViewController {
    private func setupConstraints() {
        NSLayoutConstraint.activate ([
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            logInButton.heightAnchor.constraint(equalToConstant: K.Size.buttonSize),
            logInButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            logInButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            logInButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
           registerButton.heightAnchor.constraint(equalToConstant: K.Size.buttonSize),
            registerButton.bottomAnchor.constraint(equalTo: logInButton.topAnchor, constant: -8),
           registerButton.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
        ])

    }
    
}

#Preview {
    WelcomeViewController()
}

