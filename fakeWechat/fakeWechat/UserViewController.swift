//
//  UserViewController.swift
//  fakeWechat
//
//  Created by 王威卫 on 2021/3/30.
//

import UIKit

class UserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginPressed(_ sender: UIButton) {
        let loginVC = UserLoginViewController()
        present(loginVC, animated: true, completion: nil)
    }
    
    @IBAction func Login3rdPressed(_ sender: Any) {
        let login3rdVC = User3rdViewController()
        present(login3rdVC, animated: false, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
