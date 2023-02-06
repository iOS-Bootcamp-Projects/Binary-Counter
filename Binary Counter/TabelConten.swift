//
//  TabelConten.swift
//  Binary Counter
//
//  Created by Aamer Essa on 16/11/2022.
//

import UIKit

class TabelConten: UITableViewCell {

    @IBOutlet weak var numberLabel: UILabel!
    weak var viewController:ViewController!
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBAction func onClickAddBtn(_ sender: Any) {
        let number = Int(self.numberLabel.text!) ?? 0
        viewController.addNumber(number: number)
    }
    
    @IBAction func onClickSubBtn(_ sender: Any) {
        let number = Int(self.numberLabel.text!) ?? 0
        viewController.subNumber(number: number)
    }
    
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}

