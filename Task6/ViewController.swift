//
//  ViewController.swift
//  Task6
//
//  Created by 野村大悟 on 2021/03/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var numLabel: UILabel!
    private var randomValue = 0
    override func viewDidLoad() {
        slider.setValue(50, animated: false)
        randomValue = Int.random(in: 1...100)
        numLabel.text = String(randomValue)
    }
    @IBOutlet private var slider: UISlider!

    private func alert(message: String) {
       let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "再挑戦", style: UIAlertAction.Style.default) { _ in
            self.viewDidLoad()
        })
        present(alert, animated: true, completion: nil)
    }
    @IBAction private func judgementButton(_ sender: Any) {
        if randomValue == Int(slider.value) {
            alert(message: "あたり！\nあなたの値は:\(Int(slider.value))")
        } else {
            alert(message: "はずれ！\nあなたの値は:\(Int(slider.value))")
        }
    }
}
