//
//  BMIController.swift
//  exercise
//
//  Created by chenghsuan on 2017/3/24.
//  Copyright © 2017年 chenghsuan. All rights reserved.
//

import UIKit

class BMIController: UIViewController {

    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var resultTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func confirmButton(_ sender: Any) {
        if heightTextField.text != "" && weightTextField.text != ""{
            let height = Double(heightTextField.text!)!/100
            let weight = Double(weightTextField.text!)
            let result = weight!/height/height
            if result < 18.5 {
                resultTextView.text = "BMI = " + String(format:"%.2f",result) + "\n\n體重過輕\n需要多吃一點喔！！"
            }
            else if result < 24{
                resultTextView.text = "BMI = " + String(format:"%.2f",result) + "\n\n太棒了！！體重健康\n要繼續保持喔！！"
            }
            else if result < 27{
                resultTextView.text = "BMI = " + String(format:"%.2f",result) + "\n\n歐歐！！體重過重，要小心哦\n要開始運動計畫了"
            }
            else{
                resultTextView.text = "BMI = " + String(format:"%.2f",result) + "\n\n肥胖，需要立刻去運動了！！"
            }
            resultTextView.isHidden = false
        }
        else{
            let optionMenu = UIAlertController(title: nil, message: "請確實填寫身高、體重！", preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "確定", style: .cancel, handler: nil)
            optionMenu.addAction(cancelAction)
            present(optionMenu, animated: true, completion: nil)
            resultTextView.isHidden = true
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
