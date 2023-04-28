//
//  LottoZahlen.swift
//  Praxisaufgabe_Swift_1.5
//
//  Created by Brian Moyou on 14.02.23.
//

import Foundation

func lottoZahlenGenerieren()  {
    // Schreibe deinen Code für die erste Aufgabe hier
    
    // random 6 Lottozahlen auswählen
    var lottozahlen: [Int] = []
    var einmal: Bool = true
    
    for i in 1...6 {
        var randomZahl = (Int.random(in: 1..<50))
        lottozahlen.append(randomZahl)
    
        //check, ob lotto doppelt vorkommt
            if lottozahlen.contains(randomZahl) {
                einmal = false
                
                //falls looto einmalig, dann anhängen
                if einmal {
                    lottozahlen.append(randomZahl)
                }
        }
    }
    lottozahlen.sort()
    print(lottozahlen)
    
    
}
