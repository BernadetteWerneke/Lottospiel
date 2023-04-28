//
//  FruitShop.swift
//  Praxisaufgabe_Swift_1.5
//
//  Created by Brian Moyou on 14.02.23.
//

import Foundation

func fruitShop() {
    // Schreibe deinen Code für die erste Aufgabe hier
    
    var fruits: Dictionary = ["Apfel": 1.99, "Kiwi": 0.90, "Banane": 0.50, "Mango": 2.49, "Papaya": 2.20]
    
    //Präsentation Angebot
    print("Unsere heutigen Angebote:")
    for (fruits, preis) in fruits{
        print("\(fruits) : \(preis) Euro")
    }
    
    //Kundenangaben
    print("Guten Tag!")
    print("Welche Frucht möchten Sie haben?")
    if let inputFruits: String = readLine() {
        
        print("Wieviel Stück möchten Sie haben?")
        if let inputAnzahl = Double (readLine()!){
            
            if fruits[inputFruits] != nil {
                
                //Endbetrag berechnen
                let fru = fruits[inputFruits]
                let totalBetrag = inputAnzahl * Double(fru!)
                print("Ihr Einkauf beträgt \(totalBetrag) Euro.")
            }
        }
    }
}
