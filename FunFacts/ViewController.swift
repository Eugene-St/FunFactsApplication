//
//  ViewController.swift
//  FunFacts
//
//  Created by Work on 8/14/17.
//  Copyright © 2017 EugeneSt. All rights reserved.
//
// IBOutlet - Interface Builder
// Weak - memory management
// MVC - Model View Controller design pattern

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var funFactButton: UIButton!
    
    let factProvider = FactProvier()
    let colorProvider = BackgroundColorsProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        funFactButton.layer.shadowColor = UIColor.black.cgColor
        funFactButton.layer.shadowRadius = 5
        funFactButton.layer.shadowOpacity = 1.0
        
        funFactLabel.text = factProvider.randomFact()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
    
    let randomColor = colorProvider.randomColor()
        
    funFactLabel.text = factProvider.randomFact()
    view.backgroundColor = randomColor
    funFactButton.tintColor = randomColor

    }
}

