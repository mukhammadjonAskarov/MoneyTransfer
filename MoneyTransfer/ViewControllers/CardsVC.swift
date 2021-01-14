//
//  CardsVC.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 12/01/21.
//

import UIKit

class CardsVC: UIViewController {
    
    let cardView = CardView()
    //let cardNameLabel = MTTitleLabel(textAlignment: .right, fontSize: 12)
    let card1    = Card(cardNumber: "8600123412341234", expiryDate: "12/21", cardHolder: "Card holder name")
    let card2    = Card(cardNumber: "8600123412341234", expiryDate: "12/21", cardHolder: "Card holder name")
    let card3    = Card(cardNumber: "8600123412341234", expiryDate: "12/21", cardHolder: "Card holder name")
    let card4    = Card(cardNumber: "8600123412341234", expiryDate: "12/21", cardHolder: "Card holder name")
    
    var tempCards: [Card] = []
    let tableView = UITableView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        view.backgroundColor = .white
        navigationController?.setNavigationBarHidden(true, animated: false)
        tempCards.append(card1)
        tempCards.append(card2)
        tempCards.append(card3)
        tempCards.append(card4)
        configureTableView()
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
    
    func configureTableView(){
        view.addSubview(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        tableView.backgroundColor = .clear
        
        tableView.register(CardViewCell.self, forCellReuseIdentifier: CardViewCell.reuseId)
        tableView.register(MTAddCardButtonCell.self, forCellReuseIdentifier: MTAddCardButtonCell.reuserId)
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
            //tableView.heightAnchor.constraint(equalToConstant: tableView.contentSize.height)
        ])
    }
    
}

extension CardsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempCards.count + 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == tempCards.count {
            return 80
        }
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == tempCards.count {
            let cell = tableView.dequeueReusableCell(withIdentifier: MTAddCardButtonCell.reuserId, for: indexPath) as! MTAddCardButtonCell
            
            return cell
        }
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: CardViewCell.reuseId, for: indexPath) as! CardViewCell
            cell.model = tempCards[indexPath.row]
            
            return cell
        }
    }
    
}
