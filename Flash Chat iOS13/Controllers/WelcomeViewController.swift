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
 
    let registerButton = UIButton(
        titleColor: UIColor(named: K.BrandColors.blue),
        backgroundColor: UIColor(named: K.BrandColors.lighBlue)
        )
    let logInButton = UIButton(titleColor: .white, backgroundColor: .systemTeal)
    

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setupConstraints()

       
    }
    
    //MARK: - Set Views
    private func setViews() {
        view.backgroundColor = .white
        view.addSubview(titleLabel)
        view.addSubview(registerButton)
        view.addSubview(logInButton)
        registerButton.setTitle(K.registerName, for: .normal)
        logInButton.setTitle(K.loginName, for: .normal)
        
        registerButton.addTarget(self, action: #selector(buttonsTapped), for: .touchUpInside)
        logInButton.addTarget(self, action: #selector(buttonsTapped), for: .touchUpInside)
    }
    @objc private func buttonsTapped() {
        let nextVC = RegisterViewController()
        navigationController?.pushViewController(nextVC, animated: true)
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
extension UIButton {
    convenience init(titleColor: UIColor?, backgroundColor: UIColor? = .clear) {
        self.init(type: .system)
        self.titleLabel?.font = .systemFont(ofSize: 30)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.translatesAutoresizingMaskIntoConstraints = false
      
    }
    
}


#Preview {
    WelcomeViewController()
}

