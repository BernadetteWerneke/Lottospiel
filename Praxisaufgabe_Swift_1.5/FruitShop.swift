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
    print("\n Unsere heutigen Angebote:")
    for (fruits, preis) in fruits{
        print("\(fruits) : \(preis) Euro")
    }
    
    //Kundenangaben
    print("\n Guten Tag!")
    
    print("Welche Frucht möchten Sie haben?")
    if let inputFruits: String = readLine() {
        
        print("Wieviel Stück möchten Sie haben?")
        if let inputAnzahl = Double (readLine()!){
            
            if fruits[inputFruits] != nil {
                
                //Betrag berechnen
                let fru = fruits[inputFruits]
                let totalBetrag: Double = inputAnzahl * Double(fru!)
                print("Ihr Einkauf beträgt \(totalBetrag) Euro.")
                
                //Kunde bezahlt mit Betrag, Wechselgled berechnen
                print("Eingabe des Betrags, mit dem Sie bezahlen:")
                if let inputBetrag = Double (readLine()!) {
                    var wechselgeld = inputBetrag - totalBetrag
                    if wechselgeld < 0.0 {
                        print("Nicht genügend Geld!")
                    } else {
                        print("Ihr Wechselgeld beträgt: \(wechselgeld) Euro")
                    }
                }
            }
        }
    }
}
