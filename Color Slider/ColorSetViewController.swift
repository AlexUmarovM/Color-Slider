//
//  ViewController.swift
//  Color Slider
//
//  Created by Александр Умаров on 22.05.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

protocol SetColorViewControllerDelegate {
    func changeColor (redValue: CGFloat,
                      greenValue: CGFloat,
                      blueValue: CGFloat,
                      alphaValue: CGFloat)
   }

class ColorSetViewController: UIViewController{
   
    
    // Color View Outlet
    @IBOutlet var colorView: UIView!
    
    // Color Value Outlet
    @IBOutlet var redValue: UILabel!
    @IBOutlet var greenValue: UILabel!
    @IBOutlet var blueValue: UILabel!
    
    // Sliders Outlet
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    // TextField value
    @IBOutlet var redTextField: UITextField!
    @IBOutlet var greenTextField: UITextField!
    @IBOutlet var blueTextField: UITextField!
    
    var color: UIColor!
    
    
    @IBOutlet var doneButton: UIButton!
    
    var deligate: SetColorViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redValue.text = String(redSlider.value)
        greenValue.text = String(greenSlider.value)
        blueValue.text = String(blueSlider.value)
        
        redTextField.text = String(redSlider.value)
        greenTextField.text = String(greenSlider.value)
        blueTextField.text = String(blueSlider.value)
        
        colorView.layer.cornerRadius = 10
        doneButton.layer.cornerRadius = 10
        colorView.backgroundColor = color
    
    }
    
    func changingColor () {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        
    }
    
    //Color Value Action
    
    @IBAction func sliderAction() {
        redValue.text = String(format: "%.2f", redSlider.value)
        greenValue.text = String(format: "%.2f", greenSlider.value)
        blueValue.text = String(format: "%.2f", blueSlider.value)
        
        redTextField.text = String(format: "%.2f", redSlider.value)
        greenTextField.text = String(format: "%.2f", greenSlider.value)
        blueTextField.text = String(format: "%.2f", blueSlider.value)
        changingColor()
    }
    
    
    @IBAction func setMainBG(_ sender: UIButton) {
        deligate.changeColor (redValue: CGFloat(redSlider.value),
                              greenValue: CGFloat(greenSlider.value),
                              blueValue: CGFloat(blueSlider.value),
                              alphaValue: 1)
        dismiss(animated: true)
    }
    
    
}




