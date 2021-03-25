//
//  ViewController.swift
//  TrafficLight2
//
//  Created by Bulat Kamalov on 25.03.2021.
//

import UIKit
enum SwitchColor {
    case red
    case yelloy
    case green
    case none
}

class ViewController: UIViewController {
    var switchColor: SwitchColor = .none
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var yellowView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.layer.cornerRadius = 60
        yellowView.layer.cornerRadius = 60
        greenView.layer.cornerRadius = 60
        startButton.layer.cornerRadius = 20
        
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        
    }
    
    @IBAction func stertButtonOressed(_ sender: UIButton) {
        switch switchColor {
        case .none:
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            switchColor = .red
            startButton.setTitle("Next", for: .normal)
        case .red:
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            switchColor = .yelloy
        case .yelloy:
            yellowView.alpha = 1
            redView.alpha = 0.3
            greenView.alpha = 0.3
            switchColor = .green
        case .green:
            greenView.alpha = 1
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            switchColor = .none
     
        }
    }
}

    


