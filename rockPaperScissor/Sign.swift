//
//  Sign.swift
//  rockPaperScissor
//
//  Created by Javier Perez Primary on 12/14/17.
//  Copyright © 2017 JavierPerez. All rights reserved.
//

import Foundation
import GameplayKit

let random = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func rand()-> Sign{
    let sign = random.nextInt()
    
    if sign == 0 {
        return .rock
    }else if sign == 1 {
        return .paper
    }else {
        return . scissors
    }
}

enum Sign {
    case rock, paper, scissors
    
    var emoji: String {
        switch self {
        case .rock:
            return "👊"
        
        case .paper:
            return "🖐"
            
        case .scissors:
            return "✌️"
        }
    }
    
    func turn(_ opponent: Sign) -> GameState {
        //making options for each result with switch staetments
        switch self {
        case .rock:
            
            switch opponent {
            case .rock:
                return GameState.draw
                
            case .paper:
                return GameState.lose
                
            case .scissors:
                return GameState.win
            }
            
        case .paper:
            
            switch opponent {
            case .rock:
                return GameState.win
                
            case .paper:
                return GameState.draw
                
            case .scissors:
                return GameState.lose
                
            }
            
        case .scissors:
            
            switch opponent {
            case .rock:
                return GameState.lose
                
            case .paper:
                return GameState.win
                
            case .scissors:
                return GameState.draw
                
            }
            
        }
        
    }
    
    
}
