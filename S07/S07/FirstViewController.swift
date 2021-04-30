//
//  FirstViewController.swift
//  S07
//
//  Created by 王威卫 on 2021/4/14.
//

import UIKit

class FirstViewController: UIViewController , UITableViewDataSource{
    
    let products = [
        ["name":"随便","detail":"无所谓"],
        ["name":"懒死了","detail":"只想躺着"],
        ["name":"为啥还有一堆事情？","detail":"不想干了"],
        ["name":"火气大的很","detail":"no"],
        ["name":"有点烦","detail":"别烦"]
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell.textLabel?.text = products[indexPath.row]["name"]
        cell.detailTextLabel?.text = products[indexPath.row]["detail"]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

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
