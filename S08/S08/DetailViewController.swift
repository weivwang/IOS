//
//  ViewController.swift
//  S08
//
//  Created by 王威卫 on 2021/4/18.
//

import UIKit

class DetailViewController: UIViewController {
    var student:Student?
    var isAdd:Bool = true
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var scoreTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let stu = self.student
        {
            nameTextField.text = stu.name
            birthdayTextField.text = stu.birthday
            scoreTextField.text = stu.score
            addressTextField.text = stu.address
        }
        
    }

    @IBAction func saveButtonTapped(_ sender: Any) {
        if let stu = self.student
        {
            stu.name = nameTextField.text!
            stu.birthday = birthdayTextField.text!
            stu.score = scoreTextField.text!
            stu.address = addressTextField.text!
        }
        performSegue(withIdentifier: "UnWin", sender: self)
    }
    
}

