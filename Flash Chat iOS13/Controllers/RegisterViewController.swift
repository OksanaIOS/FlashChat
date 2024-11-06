////
////  RegisterViewController.swift
////  Flash Chat iOS13
////
////  Created by Angela Yu on 21/10/2019.
////  Copyright © 2019 Angela Yu. All rights reserved.
////
//
import UIKit



class RegisterViewController: UIViewController {
    //MARK: - UI
    private lazy var mainStackView: UIStackView  = {
        let element = UIStackView()
        element.axis = .vertical
        element.spacing = 8
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    let emailTextField = UITextField(
        placeholder: K.emailName,
        color: UIColor(named: K.BrandColors.blue)
    )
    let passwordTextField = UITextField(
        placeholder: K.passwordName,
        color: .black
    )
    
    

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setupConstraints()

       
    }
    
    //MARK: - Set Views
    private func setViews() {
        view.backgroundColor = .systemGreen
        view.addSubview(mainStackView)
        mainStackView.addArrangedSubview(emailTextField)
        mainStackView.addArrangedSubview(passwordTextField)
       
    }
    @objc private func buttonsTapped() {
       
    }
}


//MARK: - Extensions

extension RegisterViewController {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            
            mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            
            emailTextField.heightAnchor.constraint(equalToConstant: 60),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
            
          passwordTextField.heightAnchor.constraint(equalToConstant: 60),
          passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
          passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -36),
        ])
 
    }
    
}
extension UITextField {
    convenience init(placeholder: String, color: UIColor?) {
        self.init()
        self.placeholder = placeholder
        self.textColor = color
        self.textAlignment = .center
        self.backgroundColor = .white
        self.layer.cornerRadius = 30
        self.font = .systemFont(ofSize: 25)
        self.tintColor = color
    }
    
}




