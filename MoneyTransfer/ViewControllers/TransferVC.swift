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
    let visaCardImageView      = UIImageView()
    let humoCardImageView      = UIImageView()
    let uzcardImageView        = UIImageView()
    let cardsLabelStackView    = UIStackView()
    
    let pushLogoTitlelabel     = MTTitleLabel(textAlignment: .center, fontSize: 17)
    let sendMoneyButton        = MTButton(backgroundColor: .black, title: "Перевод денег")
    let receiveMoneyButton     = MTButton(backgroundColor: .black, title: "Просить денег")
    
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
        
        visaCardImageView.image     = UIImage(named: "Visa")
        visaCardImageView.translatesAutoresizingMaskIntoConstraints = false
        visaCardImageView.alpha     = 0.90
        visaCardImageView.contentMode   = .scaleAspectFit
        
        humoCardImageView.image     = UIImage(named: "Visa")
        humoCardImageView.translatesAutoresizingMaskIntoConstraints = false
        humoCardImageView.alpha     = 0.90
        humoCardImageView.contentMode   = .scaleAspectFit
        
        uzcardImageView.image       = UIImage(named: "Visa")
        uzcardImageView.translatesAutoresizingMaskIntoConstraints   = false
        uzcardImageView.alpha       = 0.90
        uzcardImageView.contentMode = .scaleAspectFit
        
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
            sendMoneyButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        view.addSubview(receiveMoneyButton)
        
        NSLayoutConstraint.activate([
            receiveMoneyButton.topAnchor.constraint(equalTo: sendMoneyButton.bottomAnchor, constant: 20),
            receiveMoneyButton.leadingAnchor.constraint(equalTo: sendMoneyButton.leadingAnchor),
            receiveMoneyButton.trailingAnchor.constraint(equalTo: sendMoneyButton.trailingAnchor),
            receiveMoneyButton.heightAnchor.constraint(equalToConstant: 40)
        ])
        
        view.addSubview(cardsLabelStackView)
        cardsLabelStackView.translatesAutoresizingMaskIntoConstraints = false
        
        cardsLabelStackView.addArrangedSubview(humoCardImageView)
        cardsLabelStackView.addArrangedSubview(uzcardImageView)
        cardsLabelStackView.addArrangedSubview(visaCardImageView)
        
        cardsLabelStackView.axis    = .horizontal
        cardsLabelStackView.distribution = .fillEqually
        NSLayoutConstraint.activate([
            cardsLabelStackView.topAnchor.constraint(equalTo: view.centerYAnchor, constant: -10),
            cardsLabelStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            cardsLabelStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            cardsLabelStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
        ])
    }
}
