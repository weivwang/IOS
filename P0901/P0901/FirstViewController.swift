//
//  FirstViewController.swift
//  P0901
//
//  Created by 王威卫 on 2021/5/3.
//

import UIKit

class FirstViewController: UIViewController {
    
    var addItemDelegate:AddItemDelegate?
    

    @IBAction func saveBtnTapped(_ sender: Any) {
        let index = Int(arc4random_uniform(100))
        addItemDelegate?.addItem(Index: index)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nav = tabBarController?.viewControllers?[1] as? UINavigationController
        
        let sectab = nav?.viewControllers.first as? SecondTableViewController
        
        addItemDelegate = sectab
        // Do any additional setup after loading the view.
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
