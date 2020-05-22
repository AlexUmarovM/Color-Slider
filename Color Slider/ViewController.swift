//
//  ViewController.swift
//  Color Slider
//
//  Created by Александр Умаров on 22.05.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Color View Outlet
    @IBOutlet var colorView: UIView!
    
    //Color Label Outlet
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    //Color Value Outlet
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    //Sliders Outlet
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


}

