//
//  ViewController.swift
//  Window-Shopper
//
//  Created by Lewis on 05/02/2019.
//  Copyright © 2019 Lewis Crennell. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var itemPriceText: CurrencyTextField!
    @IBOutlet weak var wageText: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCalcButton()
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    func setCalcButton() {
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        wageText.inputAccessoryView = calcButton
        itemPriceText.inputAccessoryView = calcButton
    }
    
    @objc func calculate() {
        if let wageText = wageText.text, let priceText = itemPriceText.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }
    
    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageText.text = ""
        itemPriceText.text = ""
    }
    


}

