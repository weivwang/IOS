//
//  ToolBarPageViewController.swift
//  S0601
//
//  Created by 王威卫 on 2021/4/4.
//

import UIKit

class ToolBarPageViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    let vc1 = UIViewController()
    let vc2 = UIViewController()
    let vc3 = UIViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vc1.view.backgroundColor = UIColor.red
        vc2.view.backgroundColor = UIColor.green
        vc3.view.backgroundColor = UIColor.blue
        
        self.addChild(vc1)
        self.addChild(vc2)
        self.addChild(vc3)
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func contentView(_ sender: UIBarButtonItem) {
        let text = sender.title
        switch text {
        case "红色":
            contentView.addSubview(vc1.view)
        case "绿色":
            contentView.addSubview(vc2.view)
        case "蓝色":
            contentView.addSubview(vc3.view)
        default:
            return
        }
        
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
