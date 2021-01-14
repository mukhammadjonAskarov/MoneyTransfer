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
    }
    
    func configureTableView(){
        view.addSubview(tableView)
       
        self.tableView.delegate = self
        self.tableView.dataSource = self
      
        tableView.register(CardViewCell.self, forCellReuseIdentifier: CardViewCell.reuseId)
        tableView.register(MTAddCardButtonCell.self, forCellReuseIdentifier: MTAddCardButtonCell.reuserId)
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
           // tableView.heightAnchor.constraint(equalToConstant: tableView.contentSize.height)
            
        ])
    }
    
    func setCellAsCardView(cell: UITableViewCell){
        cell.contentView.layer.cornerRadius = 2
        cell.contentView.layer.borderColor  = UIColor.black.cgColor
        cell.contentView.layer.shadowColor  = UIColor.darkGray.cgColor
        cell.contentView.layer.shadowOffset = CGSize(width: 1, height: 2)
        cell.contentView.layer.shadowOpacity = 0.9
        cell.contentView.layer.shadowPath    = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        cell.contentView.backgroundColor = .white
    }
    
}

extension CardsVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tempCards.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == tempCards.count - 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: MTAddCardButtonCell.reuserId, for: indexPath) as! MTAddCardButtonCell
            setCellAsCardView(cell: cell)
            
            return cell
        }
        else {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: CardViewCell.reuseId, for: indexPath) as! CardViewCell
            cell.model = tempCards[indexPath.row]
            setCellAsCardView(cell: cell)
            
            return cell
        }
    }
    
}
