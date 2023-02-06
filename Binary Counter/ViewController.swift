//
//  ViewController.swift
//  Binary Counter
//
//  Created by Aamer Essa on 16/11/2022.
//

import UIKit

class ViewController: UIViewController {

    var powerOfTenList = [Any]()
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tabelView: UITableView!
    var total = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.dataSource = self
        tabelView.delegate = self
       genreatPowerofTen()
        totalLabel.text = "Total: 0 "
        
    }
    
   
    func genreatPowerofTen () {
        for i in 1...16 {
            let power = pow(10, i)
            powerOfTenList.append(power)
        }
        print(powerOfTenList.count)
    }// end of genreatPowerofTen
    
    func addNumber(number:Int){
        
        total += number
        totalLabel.text = "Total: \(total)"
        tabelView.reloadData()
        
    }// end of addNumber()
    
    func subNumber(number:Int){
        total -= number
        totalLabel.text = "Total: \(total)"
        tabelView.reloadData()
    }//end of subNumber 

}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return powerOfTenList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! TabelConten
        cell.numberLabel.text = "\(powerOfTenList[indexPath.row])"
        cell.viewController = self
        return cell
    }
}

