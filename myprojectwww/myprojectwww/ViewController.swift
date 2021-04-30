//
//  ViewController.swift
//  myprojectwww
//
//  Created by 王威卫 on 2021/3/16.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var lbmsg: UILabel!
    
    var flag = 0
    
    @IBAction func click(_ sender: Any) {
        
        if(flag == 0){
            lbmsg.text = "停止"
            flag = 1
        }
        else
        {
            lbmsg.text = "启动"
            flag = 0
        }
    }
}

