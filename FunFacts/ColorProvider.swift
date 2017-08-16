//
//  ColorProvider.swift
//  FunFacts
//
//  Created by Work on 8/16/17.
//  Copyright © 2017 EugeneSt. All rights reserved.
//

import UIKit
import GameKit

struct BackgroundColorsProvider {
    
    let colors = [
        UIColor(red: 153/255.0, green: 0/255.0, blue: 102/255.0, alpha: 1.0), // pink
        UIColor(red: 0/255.0, green: 102/255.0, blue: 204/255.0, alpha: 1.0), // green
        UIColor(red: 204/255.0, green: 102/255.0, blue: 51/255.0, alpha: 1.0), // orange
        UIColor(red: 255/255.0, green: 102/255.0, blue: 102/255.0, alpha: 1.0), // peach
        UIColor(red: 231/255.0, green: 154/255.0, blue: 116/255.0, alpha: 1.0), // boloto
        UIColor(red: 84/255.0, green: 185/255.0, blue: 209/255.0, alpha: 1.0), // sky blue
        UIColor(red: 241/255.0, green: 189/255.0, blue: 23/255.0, alpha: 1.0), // deep lemon
        UIColor(red: 53/255.0, green: 168/255.0, blue: 118/255.0, alpha: 1.0), // mint
    ]
    
    func randomColor() -> UIColor {
        let randomNumber = GKRandomSource.sharedRandom().nextInt(upperBound: colors.count)
        return colors[randomNumber]
    }
}

var blueColor = UIColor(red: 0/255.0, green: 0/255.0, blue: 255/255.0, alpha: 1.0)

