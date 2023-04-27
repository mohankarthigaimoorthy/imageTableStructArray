//
//  imageViewController.swift
//  tableviewStruct&Array
//
//  Created by Mohan K on 10/02/23.
//

import UIKit

class imageViewController: UIViewController {

    
    @IBOutlet weak var dataLbl: UILabel!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    var image = UIImage()
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataLbl.text = "your selected \(name) for  vote"
        profileImage.image = image
        // Do any additional setup after loading the view.
    }
  
    @IBAction func voteBtn(_ sender: Any) {
        
        
    }
}
