//
//  ViewController.swift
//  RGB
//
//  Created by Рома Баранов on 26.03.2023.
//

import UIKit

final class ViewController: UIViewController {

    
    @IBOutlet var acceptsСolor: UIView!
    
    @IBOutlet var redColor: UILabel!
    @IBOutlet var greenColor: UILabel!
    @IBOutlet var blueColor: UILabel!
    
    
    @IBOutlet var redColorContrast: UILabel!
    @IBOutlet var greenColorContrast: UILabel!
    @IBOutlet var blueColorContrast: UILabel!
   
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        acceptsСolor.layer.cornerRadius = 10
    
    }
    
    
    @IBAction func passesTheValuesOfTheRedSlider() {
        redColorContrast.text = redSlider.value.formatted(
            .number
            .precision(
            .fractionLength(2))
        )

    }
    
    @IBAction func passesTheValuesOfTheGreenSlider() {
        greenColorContrast.text = greenSlider.value.formatted(
            .number
            .precision(
            .fractionLength(2))
        )
     

    }

    @IBAction func passesTheValuesOfTheBlueSlider() {
        blueColorContrast.text = blueSlider.value.formatted(
            .number
            .precision(
            .fractionLength(2))
        )
    }
    
    func changesColorView() {
       
    }
    

    
}

