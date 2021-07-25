//
//  Countries.swift
//  Countries
//
//  Created by Андрей Бородкин on 24.07.2021.
//

import Foundation


struct CountriesModel {
    
    lazy var countries: [Country] = load("Sample.json")
    
    
    func load(_ filename: String) -> [Country] {
        let data: Data
        
        guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
            fatalError("Couldn't find \(filename) in main bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
            return try decoder.decode([Country].self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \([Country].self):\n\(error)")
        }
    }
}
