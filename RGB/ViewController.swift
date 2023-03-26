//
//  ViewController.swift
//  RGB
//
//  Created by Рома Баранов on 26.03.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var acceptsСolor: UIView!
    
    @IBOutlet var redColorContrast: UILabel!
    @IBOutlet var greenColorContrast: UILabel!
    @IBOutlet var blueColorContrast: UILabel!
   
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewWillLayoutSubviews() {
        acceptsСolor.layer.cornerRadius = 15
        setsTheColorMode(redSlider)
        setsTheColorMode(greenSlider)
        setsTheColorMode(blueSlider)
    }
    

    @IBAction func setsTheColorMode(_ sender: UISlider) {
        if sender.tag == 1 {
            redColorContrast.text = redSlider.value.formatted(.number.precision(.fractionLength(2)))
        } else if sender.tag == 2 {
            greenColorContrast.text = greenSlider.value.formatted(.number.precision(.fractionLength(2)))
        } else if sender.tag == 3 {
            blueColorContrast.text = blueSlider.value.formatted(.number.precision(.fractionLength(2)))
        }
        
        acceptsСolor.backgroundColor = changesColorView()
    }
    
    
    private func changesColorView() -> UIColor{
        let color  = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
        
        return color
    }
    

    
}

