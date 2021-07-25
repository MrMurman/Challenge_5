//
//  ViewController.swift
//  Challenge_5
//
//  Created by Андрей Бородкин on 24.07.2021.
//

import UIKit
import Foundation

class ViewController: UITableViewController {

    var countryArray = [Country]()
    var model: CountriesModel?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        model = CountriesModel()
        countryArray = model!.countries
        
        title = "List of countries"
         //Do any additional setup after loading the view.
//        guard let data = model?.countries else {
//            print("Something really bad happened")
//            return
//        }
//        countryArray = data
        tableView.reloadData()
        
//
//        guard let file = Bundle.main.url(forResource: "Sample", withExtension: "json") else {
//            fatalError("Couldn't find Sample in main bundle.")
//        }
//
//
//        if let data = try? Data(contentsOf: file) {
//
//            let decoder = JSONDecoder()
//            if let decodedData = try? decoder.decode([Country].self, from: data) {
//                self.countryArray = decodedData
//            }
//
//        }
//        tableView.reloadData()
//        print(countryArray)

    }

    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countryArray.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath)
        cell.textLabel?.text = countryArray[indexPath.row].name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailVC") as! DetailViewController
        vc.countryReceived = countryArray[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
    

}

