//
//  ViewController.swift
//  trafficLight
//
//  Created by Bulat Kamalov on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yelloyLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 60
        yelloyLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
        startButton.layer.cornerRadius = 15
        redLightView.alpha = 0.3
        yelloyLightView.alpha = 0.3
        greenLightView.alpha = 0.3
    }

    @IBAction func showbuttonPressed() {
        if redLightView.alpha != 1{
            redLightView.alpha = 1
        } else if yelloyLightView.alpha != 1{
            yelloyLightView.alpha = 1
        } else if greenLightView.alpha != 1{
            yelloyLightView.alpha = 1
        } 
        
    }
    
    
}

