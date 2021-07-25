//
//  TableViewController.swift
//  TableViewController
//
//  Created by Андрей Бородкин on 25.07.2021.
//

import UIKit

class DetailViewController: UITableViewController {

    
    @IBOutlet weak var flagImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    
    var countryReceived: Country!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let country = countryReceived {
            //flagImage.image = country.image
            nameLabel.text = country.name
            capitalLabel.text = "Capital: \(country.capital)"
            populationLabel.text = "Population: \(String(country.population))"
        }
       
    }

    
    
}
