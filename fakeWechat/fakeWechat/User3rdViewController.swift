//
//  User3rdViewController.swift
//  fakeWechat
//
//  Created by 王威卫 on 2021/3/30.
//

import UIKit

class User3rdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func login3rd(_ sender: Any) {
        let p = UIAlertController(title: "第三方登录", message: nil, preferredStyle: .actionSheet)
        p.addAction(UIAlertAction(title: "QQ", style: .default, handler: nil))
        p.addAction(UIAlertAction(title: "信息门户", style: .default, handler: nil))
        p.addAction(UIAlertAction(title: "取消", style: .default, handler: nil))
        present(p, animated: false, completion: nil)

        
    }
    
    @IBAction func close(_ sender: Any) {
        self.dismiss(animated: false, completion: nil)
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
