//
//  SettingsViewController.swift
//  RGB
//
//  Created by Рома Баранов on 26.03.2023.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func settingsViewController(_ controller: SettingsViewController, didChangeBackgroundColor color: UIColor)
}


final class SettingsViewController: UIViewController {
    
    @IBOutlet var acceptsСolor: UIView! 
    
    @IBOutlet var redColorContrast: UILabel!
    @IBOutlet var greenColorContrast: UILabel!
    @IBOutlet var blueColorContrast: UILabel!
   
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    unowned var delegate: SettingsViewControllerDelegate?
    var mainViewColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        acceptsСolor.layer.cornerRadius = 15

        if let color = mainViewColor {
            var red: CGFloat = 0, green: CGFloat = 0, blue: CGFloat = 0, alpha: CGFloat = 0
            color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
            redSlider.value = Float(red)
            greenSlider.value = Float(green)
            blueSlider.value = Float(blue)
        }
        
        setsTheColorMode(redSlider)
        setsTheColorMode(greenSlider)
        setsTheColorMode(blueSlider)
    }

    @IBAction func setsTheColorMode(_ sender: UISlider) {
        if sender.tag == 1 {
            redColorContrast.text = string(from: sender)
        } else if sender.tag == 2 {
            greenColorContrast.text = string(from: sender)
        } else if sender.tag == 3 {
            blueColorContrast.text = string(from: sender)
        }
        
        changesColorView()
    }
    
    @IBAction func closesTheScreen(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
    
    private func changesColorView() {
        acceptsСolor.backgroundColor  = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        delegate?.settingsViewController(self, didChangeBackgroundColor: acceptsСolor.backgroundColor ?? .white)
    }
}


