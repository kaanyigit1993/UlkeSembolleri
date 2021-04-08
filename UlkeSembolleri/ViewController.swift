//
//  ViewController.swift
//  UlkeSembolleri
//
//  Created by KAAN YİĞİT on 9.04.2021.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource{
    
    var landMarkNames = [String]()
    var landMarkImages = [UIImage]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landMarkNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landMarkNames[indexPath.row]
        return cell
    }
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        
        tableView.delegate = self
        tableView.dataSource = self
        super.viewDidLoad()
        
        
       
        landMarkNames.append("Colosseum")
        landMarkNames.append("Great Wall")
        landMarkNames.append("Stonehenge")
        landMarkNames.append("Tac Mahal")
        landMarkNames.append("Kremlin")
        
        
        landMarkImages.append(UIImage(named: "colosseum")!)
        landMarkImages.append(UIImage(named: "greatwall")!)
        landMarkImages.append(UIImage(named: "kremlin")!)
        landMarkImages.append(UIImage(named: "stonehenge")!)
        landMarkImages.append(UIImage(named: "tacmahal")!)
    }


}

