//
//  LottoZahlen.swift
//  Praxisaufgabe_Swift_1.5
//
//  Created by Brian Moyou on 14.02.23.
//

import Foundation

func lottoZahlenGenerieren()  {
   
    var lottozahlen: [Int] = []
    var userLottoZahlen: [Int] = []
    
    //mind. 1 Zahl als Vorbelegung
    var alleSechsZahlen: Int = 1
    let randomZahl = (Int.random(in: 1..<50))
    lottozahlen.append(randomZahl)
    
    repeat {
        var einmal: Bool = true
        let randomZahl = (Int.random(in: 1..<50))
        
        //check, ob Zahl doppelt vorkommt
        if lottozahlen.contains(randomZahl) {
            einmal = false
        }
        //falls Zahl einmalig, dann anhängen
        if einmal {
            lottozahlen.append(randomZahl)
            alleSechsZahlen += 1
        }
    } while (alleSechsZahlen < 6)
    
    //Bonus: User-Eingabe seiner Lottozahlen
        var alleSechsUserZahlen = 0
        
        repeat{
            var einmal: Bool = true
            //Eingabeaufforderung
            print("Gib eine Lottozahl ein:")
            let userZahl: Int? = Int (readLine()!)
            
            //check, ob eingegebene Zahl zwischen 1 und 49 ist
            if userZahl! > 0 && userZahl! <= 49 {
                einmal = true
            } else {
                print("Falsche Eingabe. Bitte eine Zahl zwischen 1 und 49 eingaben.")
                einmal = false
            }
            //check, ob Zahl doppelt vorkommt
            if userLottoZahlen.contains(userZahl!) {
                print("Zahl ist doppelt.")
                einmal = false
            }
            //falls UserZahl einmalig, dann anhängen
            if einmal {
                userLottoZahlen.append(userZahl!)
                alleSechsUserZahlen += 1
            }
            
        } while (alleSechsUserZahlen < 6)
    
    //Ausgabe der UserInputLottozahlen
    userLottoZahlen.sort()
    print("Deine Lottozahlen: \(userLottoZahlen)")
    
    //Ausgabe der Zahlen der Lottoziehung
    lottozahlen.sort()
    print("Ziehung: \(lottozahlen)")
    
    //Vergleich der Ziehung mit UserLottoZahlen
    var gleicheZahlen: Int = 0
    for num in userLottoZahlen {
        for zahl in lottozahlen {
            if num == zahl {
                gleicheZahlen += 1
            }
        }
    }
    
    //Ausgabe Gewinn
    switch gleicheZahlen {
    case 1: print("Cool. Eine Zahl stimmt überein.")
    case 2: print("Bravo. Zwei Zahlen stimmen überein.")
    case 3: print("Super! Drei Richitge!!")
    case 4: print("Stark! Vier Richtige.")
    case 5: print("Sehr stark. Fünf Richtige!")
    case 6: print("Mega!! Sechser im Lotto!!")
    default: print("Leider nichts gewonnen.")
    }
    
}
