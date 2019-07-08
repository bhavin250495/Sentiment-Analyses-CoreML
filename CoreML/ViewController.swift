//
//  ViewController.swift 
//  CoreML
//  Copyright © 2019 Suthar, Bhavin Udavji (US - Mumbai). All rights reserved.
//

import UIKit
import CoreML
@available(iOS 12.0, *)
class ViewController: UIViewController {
let model = SentimentModel()
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func analyseButtonTapped(_ sender: UIButton) {
        if let result =  try? model.prediction(text: textField.text ?? "").label {
            switch result {
            case "neg" : resultLabel.text = "Negative"
            case "pos" : resultLabel.text = "Positive"
            default:
                resultLabel.text = "Result"
            }
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


}

