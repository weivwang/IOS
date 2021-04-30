//
//  PresentPageViewController.swift
//  S0601
//
//  Created by 王威卫 on 2021/4/4.
//

import UIKit

class PresentPageViewController: UIViewController , UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "p"){
            let vc = segue.destination
            let button = sender as! UIButton
            vc.modalPresentationStyle = .popover
            vc.preferredContentSize = CGSize(width: 200, height: 200)
            if let pvc = vc.popoverPresentationController{
                pvc.sourceView = button
                pvc.sourceRect = button.bounds
                pvc.permittedArrowDirections = .up
                pvc.delegate = self
            }
        }
    }
    //横屏状态不满屏
    func adaptivePresentationStyle(for controller: UIPresentationController,traitCollection traitColllection:UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    

}
