//
//  MainViewController.swift
//  RGB
//
//  Created by Рома Баранов on 12.04.2023.
//

import UIKit

final class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let settingsVC = segue.destination as? SettingsViewController {
            settingsVC.delegate = self
            settingsVC.mainViewColor = self.view.backgroundColor ?? .white
        }
    }
}

// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func settingsViewController(_ controller: SettingsViewController, didChangeBackgroundColor color: UIColor) {
        self.view.backgroundColor = color

    }
}
