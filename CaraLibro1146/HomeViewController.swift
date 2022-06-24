//
//  HomeViewController.swift
//  CaraLibro1146
//
//  Created by user191544 on 6/24/22.
//

import UIKit

enum ProviderType:String{
    case basic
}
class HomeViewController: UIViewController {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var closeSessionButton: UIButton!
    
    private let email:String
    private let provider:ProviderType
    
    init(email:String,provider:ProviderType){
        self.email = email
        self.provider = provider
        super.init(nibName: <#T##String?#>, bundle: <#T##Bundle?#>)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Inicio"
    }
    @IBAction func closeSessiionButtonAction(_ sender: Any) {
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
