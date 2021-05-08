//
//  ViewController.swift
//  P1102
//
//  Created by 王威卫 on 2021/5/5.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageDAL.initDB()
        // Do any additional setup after loading the view.
    }

    @IBAction func downloadPressed(_ sender: Any) {
        imageView1.downloadAsyncFrom(url: "http://cs.whu.edu.cn/upload2018/202002/04/202002042232328224.jpg")
    }
    

    @IBAction func localPressed(_ sender: Any) {
        imageView1.image = UIImage(named: "china")
    }
    
   
    @IBAction func savePressed(_ sender: Any) {
        ImageDAL.SaveImage(id: 1, img: imageView1.image)
    }
    
    @IBAction func readPressed(_ sender: Any) {
        imageView2.image =  ImageDAL.LoadImage(id: 1)
    }
}

