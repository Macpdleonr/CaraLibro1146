//
//  HomeViewController.swift
//  CaraLibro1146
//
//  Created by user191544 on 6/24/22.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

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
    
    private let db = Firestore.firestore()
    
    init(email:String,provider:ProviderType){
        self.email = email
        self.provider = provider
        super.init(nibName: "HomeViewController", bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
        title = "Inicio"
        datosConsulta(email)

    }
    func datosConsulta(_ sender: Any){
        db.collection("usuarios").document(email).getDocument { (documentSnapshot, error) in
            if let document = documentSnapshot, error == nil{
                if let name = document.get("nombre") as? String{
                    self.nameLabel.text = name
                }
                if let apellido = document.get("apellidos") as? String{
                    self.lastNameLabel.text = apellido
                }
            }
            <#code#>
        }
    }

    @IBAction func closeSessiionButtonAction(_ sender: Any) {
        switch provider {
        case .basic:
            do {
                try Auth.auth().signOut()
                navigationController?.popViewController(animated: true)
            } catch {
                
            }
        }
    }

}

