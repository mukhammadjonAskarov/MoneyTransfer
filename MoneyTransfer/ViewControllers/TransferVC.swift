//
//  TransferVC.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 12/01/21.
//

import UIKit

class TransferVC: UIViewController {
    
    let stackView = UIStackView()
    let pushLogoImageView      = UIImageView()
    let pushLogoTitlelabel     = MTTitleLabel(textAlignment: .center, fontSize: 17)
    let sendMoneyButton        = MTButton(backgroundColor: .black, title: "Перевод денег")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.setNavigationBarHidden(true, animated: true)
        configureUI()
        
    }
    
    func configureUI(){
        view.addSubview(stackView)
        
        stackView.axis              = .vertical
        stackView.backgroundColor = UIColor(red: 129.0 / 255.0, green: 199.0 / 255.0, blue: 240.0 / 255.0, alpha: 1.0)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.distribution   = .fill
        
        pushLogoImageView.image = UIImage(named: "Push-logo")!
        pushLogoImageView.translatesAutoresizingMaskIntoConstraints = false
        pushLogoImageView.contentMode   = .scaleAspectFit
        
        pushLogoTitlelabel.text = "Перевод с карты на карту"
        pushLogoTitlelabel.textColor = .white
    
    
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            stackView.heightAnchor.constraint(equalToConstant: 140)
        ])
        
        stackView.addArrangedSubview(pushLogoImageView)
        
        NSLayoutConstraint.activate([
             pushLogoImageView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 30),
             pushLogoImageView.centerYAnchor.constraint(equalTo: stackView.centerYAnchor),
             pushLogoImageView.centerXAnchor.constraint(equalTo: stackView.centerXAnchor)
            
        ])
        
        stackView.addArrangedSubview(pushLogoTitlelabel)
        
        NSLayoutConstraint.activate([
            
            pushLogoTitlelabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20),
            pushLogoTitlelabel.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -20),
            pushLogoTitlelabel.bottomAnchor.constraint(equalTo: stackView.bottomAnchor, constant: -10)
        ])
        
        view.addSubview(sendMoneyButton)
        
        NSLayoutConstraint.activate([
            sendMoneyButton.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 20),
            sendMoneyButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            sendMoneyButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            sendMoneyButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
    }
}
