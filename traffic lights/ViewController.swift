//
//  ViewController.swift
//  traffic lights
//
//  Created by Alex Popov on 14.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yelloyView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var toggleTextButton: UIButton!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yelloyView.alpha = 0.3
        greenView.alpha = 0.3
        
        view.backgroundColor = .black
    }

    @IBAction func toggleTextButtonPress() {
        toggleTextButton.setTitle("NEXT", for: .normal)
        
        count += 1
        
        if count > 3 {
            count = 1
        }
        
        switch count {
        case 1:
            redView.alpha = 1
            greenView.alpha = 0.3
            yelloyView.alpha = 0.3
        case 2:
            redView.alpha = 0.3
            yelloyView.alpha = 1
            greenView.alpha = 0.3
        case 3:
            greenView.alpha = 1
            redView.alpha = 0.3
            yelloyView.alpha = 0.3
        default:
            break
        }
        
    }
    
}

