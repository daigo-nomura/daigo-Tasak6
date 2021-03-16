//
//  ViewController.swift
//  Task6
//
//  Created by 野村大悟 on 2021/03/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var numLabel: UILabel!
    private var randomValue: Float = 0.0
    override func viewDidLoad() {
        randomValue = Float(arc4random_uniform(100))
        numLabel.text = String(randomValue)
    }
    @IBOutlet private var slider: UISlider!
    
//    private func alert(message:String) {
//       let alert = UIAlertController(title: "課題６", message: message, preferredStyle: .alert)
//
//        alert.addAction("再挑戦" )
//    }
//    @IBAction private func judgementButton(_ sender: Any) {
//        switch randomValue == slider.value {
//        case true:
//
//        default:
//            <#code#>
//        }
//    }
}
