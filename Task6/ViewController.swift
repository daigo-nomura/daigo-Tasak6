//
//  ViewController.swift
//  Task6
//
//  Created by 野村大悟 on 2021/03/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var numLabel: UILabel!

    @IBOutlet private var slider: UISlider!

    private var randomValue = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        slider.setValue(50, animated: false)
        resetRandomValue()
        updateNumLabel()
    }

    private func resetRandomValue() {
        randomValue = Int.random(in: 1...100)
    }

    private func updateNumLabel() {
        numLabel.text = String(randomValue)
    }

    private func alert(message: String) {
       let alert = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "再挑戦", style: .default) { [weak self] _ in
            self?.resetRandomValue()
            self?.updateNumLabel()
        })
        present(alert, animated: true, completion: nil)
    }

    @IBAction private func judgementButton(_ sender: Any) {
        let firstLine: String

        if randomValue == Int(slider.value) {
            firstLine = "あたり！"
        } else {
            firstLine = "はずれ！"
        }

        alert(message: "\(firstLine)！\nあなたの値は:\(Int(slider.value))")
    }
}
