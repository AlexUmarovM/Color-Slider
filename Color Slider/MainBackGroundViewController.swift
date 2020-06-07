//
//  MainBackGroundViewController.swift
//  Color Slider
//
//  Created by Александр Умаров on 05.06.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import UIKit

class MainBackGroundViewController: UIViewController {
    @IBOutlet var colorSetButton: UIBarButtonItem!
    var red: CGFloat!
    var green: CGFloat!
    var blue: CGFloat!
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let colorSetVC = segue.destination as? ColorSetViewController {
                colorSetVC.deligate = self
            colorSetVC.color = self.view.backgroundColor
        }
        }
    
    
    

    @IBAction func setColor(_ sender: Any) {
        
    }

}

extension MainBackGroundViewController: SetColorViewControllerDelegate {
    func changeColor(redValue: CGFloat,
                     greenValue: CGFloat,
                     blueValue: CGFloat,
                     alphaValue: CGFloat) {
        
        view.backgroundColor = UIColor(red: redValue,
                                       green: greenValue,
                                       blue: blueValue,
                                       alpha: alphaValue)
        
        red = redValue
        green = greenValue
        blue = blueValue
        
    }

}
