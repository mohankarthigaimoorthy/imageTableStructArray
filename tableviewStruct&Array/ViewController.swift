//
//  ViewController.swift
//  tableviewStruct&Array
//
//  Created by Mohan K on 10/02/23.
//

import UIKit

class ViewController: UIViewController {

    var name = ["amesh_107","anbu_984","kadhiravn_643","sundar_raghavan","aadhan_ravi","saravanan_perumal","kesavan_kumar","sridhar_5762","aadhavan_2378","ajay_18238","dharun_pavani","dhinakaran_gopi","dharsan_36472","gopi_117261","mukil_mukunthan",
                "niranjan_7483"]
   var imaged = ["vijay1","vijay2","vijay3","vijay4","vijay5","vijay6","vijay7","vijay8","vijay9","vijay10","vijay11","vijay12","vijay13","vijay14","vijay15"]
    
    @IBOutlet weak var dtaPass: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        godfather()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func godfather(){
        dtaPass.delegate = self
        dtaPass.dataSource = self
    }

}

extension ViewController: UITableViewDelegate,  UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "oneTableViewCell", for: indexPath) as! oneTableViewCell
        cell.nameLbl.text = name[indexPath.row]
        cell.profileImg.image = UIImage(named: imaged[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "imageViewController") as? imageViewController
        vc?.image = UIImage(named: imaged[indexPath.row])!
        vc?.name = name[indexPath.row]
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
